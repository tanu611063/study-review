class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    # ユーザー情報
    @words = @user.words.page(params[:page]).per(5).order("created_at DESC")
    # ログイン中のユーザーの投稿
    @favorite_words = @user.favorite_words
  end

end
