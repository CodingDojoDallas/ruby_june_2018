class SessionsController < ApplicationController
  def register
    @user = User.create(user_params)
    if @user.valid?
      session[:user_id]= @user.id
      redirect_to "/posts/#{current_user.id}"
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to '/'
    end
  end

  def login
    @user = User.find_by_email(params[:email])
    if @user && @user.authenticate(params[:password])
      session[:user_id]= @user.id
      redirect_to "/posts/#{current_user.id}"
    else
      redirect_to '/' , notice: "Invaild Login"
    end

  end

  def logout
    session.delete(:user_id)
    redirect_to '/'
  end
  private
  def user_params
      params.require(:user).permit(:name, :alias, :email, :password, :password_confirmation)
  end
end
