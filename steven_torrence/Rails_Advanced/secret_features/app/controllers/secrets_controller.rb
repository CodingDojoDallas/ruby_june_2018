class SecretsController < ApplicationController
  def index
    @secrets = Secret.where.not(user_id: 'current_user.id')
    # p @secrets
    # p "^" *20
  end

  def create
    @secret = Secret.create(content: params[:user][:content], user_id: current_user.id)
    # p "*" * 25
    # p @secret
    # p "*" * 20    
    if @secret.valid?
      redirect_to "/users/#{current_user.id}"
    else
      flash[:errors] = @secret.errors.full_messages
      redirect_to :back
    end
  end

  def destroy
    secret = Secret.find(params[:id])
    secret.destroy
    redirect_to "/users/#{current_user.id}"
  end

  # private
  #   def secrets_params
  #     params.require(:user).permit(:content)
  #   end
end
