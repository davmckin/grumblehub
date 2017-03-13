class PostsController < ApplicationController

  def index
     @posts = Post.order(created_at: :desc)
  end


  def show
      @posts = Post.find(params[:id])
      @user = @posts.user
      @most_popular = Post.order(created_at: :desc).offset(1).limit(4)
      render "homes/index"
  end

end
