class PostsController < ApplicationController
  def index
    @posts = Post.includes(:comments).all
  end

  def show
    @post = Post.find_by(id: params[:id])
    @user = User.find(params[:user_id])
  end

  def new
    @post = Post.new
    @user = current_user
  end

  def create
    @user = current_user
    @post = @user.posts.new(title: post_params[:title], text: post_params[:text], comments_counter: 0, likes_counter: 0)
    return unless @post.save

    redirect_to @user
  end

  private

  def post_params
    params.require(:post).permit(:title, :text)
  end
end
