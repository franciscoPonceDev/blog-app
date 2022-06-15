class CommentsController < ApplicationController
  load_and_authorize_resource
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new(comment_params)
    @comment.user = current_user
    if @comment.save
      flash[:success] = 'Comment created!'
    else
      flash[:error] = 'Comment not created!'
    end
    redirect_to user_post_path(current_user, @post)
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    flash[:notice] = 'Comment deleted!'
    redirect_to root_path
  end

  private

  def comment_params
    params.require(:comment).permit(:text)
  end
end
