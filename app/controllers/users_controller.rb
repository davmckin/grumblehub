class UsersController < ApplicationController

before_action :find_user, only: [:edit, :show, :update]
before_action :require_user, only: [:edit, :update]

  def index
    @user = User.all
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
   @user = User.new(user_params)
   if @user.save
     redirect_to @user
   else
     render :new
   end
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to @user
    else
      render :edit
    end
  end

  private


    def user_params
      params.require(:user).permit(:username, :avatar, :password)
    end

    def find_user
      @user = User.find(params[:id])
    end


end
