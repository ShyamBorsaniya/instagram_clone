class HomesController < ApplicationController
  def index
    # @post = Post.find_by(id: 9)

    @posts = Post.all
  end
end
