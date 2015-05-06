class UsersController < ApplicationController
 
  def new
<<<<<<< HEAD
    @user = User.new
=======
    @user = User.new 
>>>>>>> 6c08b564c1d1dcf7cabcee41309c04f257a510ff
  end

  def create
    @user = User.create(user_params)
<<<<<<< HEAD
    if @user.save  
      redirect_to @user, notice: "New Account Created"
    else 
     flash[:alert] = "There was an error"
     render :new
=======
    if @user.save
      redirect_to @user, notice: "New account created"
    else
      flash[:alert]= 'There was an error' 
      render :new
>>>>>>> 6c08b564c1d1dcf7cabcee41309c04f257a510ff
    end
  end

  def edit
  end

  def update
    
  end

  def index
  end

  def show
  end

  def destroy
  end
<<<<<<< HEAD

  private

=======
  
  private
  
>>>>>>> 6c08b564c1d1dcf7cabcee41309c04f257a510ff
  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
end
