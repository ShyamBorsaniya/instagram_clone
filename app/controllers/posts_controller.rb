class PostsController < ApplicationController
  def new 
    @post = Post.new
  end

  def create
    # debugger
    @post = Post.new(post_params)

    if @post.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    
  end

  private
  def post_params
    params.require(:post).permit(:desc, :user_id, images: [])
  end
end
