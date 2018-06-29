class UsersController < ApplicationController
  def new
    render 'new'
  end

  def create
    # p params[:user][:password]
    # p params[:user][:password_confirmation]
    if params[:user][:password] == params[:user][:password_confirmation]
      user = User.create(user_params)
      # p "*" * 20
      # p user
      # p "*" * 20   
    else
        flash[:errors] = ["Passwords do not match"]
        redirect_to :back
    end

    if user 
      if user.valid?
        redirect_to "/sessions/new"
      else
        flash[:errors] = user.errors.full_messages
        redirect_to :back
      end
    end
  end

  def show
    @user = User.find(current_user.id)
    @my_secrets = @user.secrets
    # p @my_secrets
    # p "&" * 20
    # @secrets = Secret.all
  end

  def edit
    @user = User.find(params[:id])
    # p @user
  end

  def update
    user = User.find(params[:id])
    # user.update(user_params)
    user.update(name: params[:user][:name], email: params[:user][:email])
    if user.valid?
      redirect_to "/users/#{user.id}"
    else
      flash[:errors] = user.errors.full_messages
      redirect_to :back
    end
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
    session[:user_id] = nil
    redirect_to "/users/new"
  end

  private
    def user_params
      params.require(:user).permit(:name, :email, :password)
    end
end
