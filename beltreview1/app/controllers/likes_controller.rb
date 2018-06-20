class LikesController < ApplicationController

  def create
    @likes = Like.create(like_params)
    if @likes
      redirect_to "/posts/#{current_user.id}"
    else
      render json: @likes.errors
    end
  end

  def delete
    @unlike = Like.where("user_id=? and post_id=?", params[:user_id], params[:post_id])
    @unlike.destroy_all
    redirect_to "/posts/#{current_user.id}"
  end

  private
  def like_params
    params.require(:like).permit(:post_id,:user_id)
  end
end
