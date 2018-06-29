class LikesController < ApplicationController
  def create
    Like.create(user: current_user, secret_id: params[:id])
    redirect_to "/secrets"
  end

  def destroy
    trash = Like.find_by(secret_id: params[:id])
    p "$" * 20
    p trash
    trash.destroy
    redirect_to "/secrets"
  end
end
