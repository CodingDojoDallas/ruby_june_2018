class UserController < ApplicationController
  def index
  end

  def new
  end

  def show
    @user =  User.find(params[:id])
  end

  def edit
  end
  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to :back
    else
      render json: @user.errors
    end
  end

  def delete
    User.find(params[:id]).destroy
    redirect_to '/'
  end

  private
    def user_params
      params.require(:user).permit(:first_name, :last_name, :email)
    end
end
