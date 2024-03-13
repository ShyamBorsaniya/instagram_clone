class CommentsController < ApplicationController
  def show
    # @comment = Comment.where("commentable_id = #{params[:id]} AND commentable_type = Post")
    @post_comment = Comment.where(commentable_id: params[:id], commentable_type: 'Post')

  end
  
  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  private
    def comment_params
      params.require(:comment).permit(:user_id, :body, :commentable_id, :commentable_type)
    end
end
