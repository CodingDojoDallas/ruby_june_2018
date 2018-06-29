class UsersController < ApplicationController
  def new
  end

  def create
    new_user = User.new(params.require(:user).permit(:first_name, :last_name, :email))
    if new_user.save
      flash[:notice] = ['User successfully created']
      redirect_to "/users/#{new_user.id}"
    else
      flash[:notice] = new_user.errors.full_messages
      redirect_to new_user_path
    end
  end

  def show
    @user = User.last
  end
end
