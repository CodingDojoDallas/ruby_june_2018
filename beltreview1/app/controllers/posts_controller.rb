class PostsController < ApplicationController
  before_action :check_session

  def index
    @posts = Post.all
  end

  def show
    @post =  Post.find(params[:post_id])
    @users = User.all

  end
  def create
    @post = Post.create(post_params)
    if @post.valid?
      redirect_to "/posts/#{current_user.id}"
    else
      flash[:errors] = @post.errors.full_messages
      redirect_to "/posts/#{current_user.id}"
    end
  end
  def delete
    Post.find(params[:post_id]).destroy
    redirect_to "/posts/#{current_user.id}"
  end

  private
  def post_params
    params.require(:post).permit(:message, :user_id)
  end
  def check_session
    if !session[:user_id]
      redirect_to '/'
    end
  end
end
