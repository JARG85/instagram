class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comment= @post.comments.create(comment_params)
  end

  private
  def comment_params
    params.require(:comment).permit(:body).merge({user: current_user})
  end

end
