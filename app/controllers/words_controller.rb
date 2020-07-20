class WordsController < ApplicationController
  before_action :set_word, only: [:edit, :show,]
  before_action :move_to_index, except: [:index, :show, :search]
  # except以下、indexはリダイレクトの無限ループを防ぐ為。showはログインする必要が無い為。
  impressionist actions: [:show]

  def index
    @words = Word.includes(:user).order("created_at DESC").page(params[:page]).per(10)
    # userと紐付けされた情報
  end

  def new
    @word = Word.new
    # newで生成された空のWordを代入
  end

  def create 
    Word.create(word_params)
    redirect_to user_path(current_user)
    # 処理後rootに遷移
  end

  def show
    # @word = Word.find(params[:id])
    impressionist(@word, nil, session_id: session.id.to_s)
    @comment = Comment.new
    # newで生成された空のWordを代入(commentsのcreateアクションに飛ばす為)
    @comments = @word.comments.includes(:user) 
    # @word.commentsで全てのコメントのレコードを取得。誰のコメントか明らかにする為、includes(:user) を使用
  end

  def edit
    # @word = Word.find(params[:id])
    # 編集したいwordを@wordに代入し、編集ページで利用
  end

  def update
    word = Word.find(params[:id])
    # 編集したい情報を取得。情報は定まっている為、変数＠は使用しない
    word.update(word_params)
    #updateメソッドで更新 
    redirect_to user_path(current_user)
    # 詳細ページに遷移。更新したword.idを含む
  end

  def destroy
    word = Word.find(params[:id])
    word.destroy
    redirect_to user_path(current_user)
  end

  def search
    # wordモデルのsearchメソッドの呼び出し
    @words = Word.search(params[:keyword])
    # メソッドの引数にparams[:keyword]と」して検索結果を返す
  end

  private
  def word_params
    params.require(:word).permit(:title, :explanation).merge(user_id: current_user.id)
    # paramsの中身のwordモデルのカラムであるtitle,explanationを許可する
  end

  def set_word
    @word = Word.find(params[:id])
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
    # 未ログインユーザーが直接アクセスしてもindexアクションに遷移させる。unlessでログイン時では無い場合indexに遷移
  end
end

