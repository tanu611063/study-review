class CommentsController < ApplicationController
  def create
    comment = Comment.create(comment_params)
    redirect_to "/words/#{comment.word.id}"
    # コメントと紐付けされる詳細ページに遷移
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, word_id: params[:word_id])
    # user_idにログイン中のcurrent_user.idを保存、word_idにparamsで渡すparams[:word_id]を保存
  end
end
