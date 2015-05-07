class UsersController < ApplicationController
 
 before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.all
  end

  def new
    @user = User.new 
  end

  def create
    @user = User.create(user_params)
    if @user.save  
      redirect_to @user, notice: "New Account Created"
    else 
     flash[:alert] = "There was an error"
     render :new
    end
  end

  def edit
  end

  def update
    
  end

  def show
  end

  def destroy
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
end
