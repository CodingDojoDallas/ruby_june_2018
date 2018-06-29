class UsersController < ApplicationController
  def new
    # redirect_to "/sessions/new"
  end

  def create
    # p params[:user][:password]
    # p params[:user][:password_confirmation]
    if params[:user][:password] == params[:user][:password_confirmation]
      user = User.create(user_params)
      # p "*" * 20
      # p user
      # p "*" * 20      
    end
    if user.valid?
      redirect_to "/sessions/new"
    else
      flash[:errors] = user.errors.full_messages
      redirect_to :back
    end
  end

  def show
  end

  def edit
  end

  private
    def user_params
      params.require(:user).permit(:name, :email, :password)
    end
end
