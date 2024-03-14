class LikesController < ApplicationController

  def create
    # debugger
    @like = Like.new(like_params)
    if @like.save
      redirect_to root_path
    end
  end

  private
    def like_params
      params.require(:like).permit(:user_id, :likeable_id, :likeable_type)
    end
end
