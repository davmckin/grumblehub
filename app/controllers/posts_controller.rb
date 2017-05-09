class PostsController < ApplicationController

  def index
    @posts = Post.page(params[:page])
  end


  def show
      @posts = Post.find(params[:id])
      @user = @posts.user
      @most_popular = Post.order(created_at: :desc).offset(1).limit(4)
      render "homes/index"
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to @post
    else
    render :new
    end
  end

  def delete
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to :root
  end

  def edit
    @posts = Post.find(params[:id])
  end


  private

  def post_params
    params.require(:post).permit(:user_id, :body, :title, :picture)
  end

  def is_owner
    @post = current_user.post.find_by(id: params[:id])
    unless @post && @post.user == current_user
      flash[:danger] = "Users may only interact with their own posts."
      redirect_to :root
    end
  end

end
