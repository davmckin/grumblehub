class HomesController < ApplicationController

  def index
    @posts = Post.order(created_at: :desc).first
    @user = @posts.user
    @most_popular = Post.order(created_at: :desc).offset(1).limit(4)
  end

end
