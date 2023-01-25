class PostsController < ApplicationController
  def index
    @user = User.find_by(id: params[:user_id])
    @posts_all = @user.posts.includes(:comments)
  end

  def show
    @post = Post.find_by(id: params[:id])
  end
end