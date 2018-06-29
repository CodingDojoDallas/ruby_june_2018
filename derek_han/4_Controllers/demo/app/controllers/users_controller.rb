class UsersController < ApplicationController
	def index
		@users = User.all
		# render json: @users
	end

	def create
		@user = User.create( first_name: params[:first_name], last_name: params[:last_name], email: params[:email])
		puts @user

		# render :text => "Create new project"
		redirect_to '/users/index'
	end

	def new
	end
end
