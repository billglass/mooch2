class SessionsController < ApplicationController
  
  def new
  end

  def create
  	@user = User.find_by(email: params[:email])
  	if @user and @user.password == params[:password]
  	 session[:user_id] = @user.id
     flash[:notice] = "You successfully logged in"
     redirect_to user_path(@user.id)
   else
   	flash[:alert] = "There has been an error"
   	render :new
   end
end

def destroy
  	session[:user_id]= nil
  	flash[:notice]="You have successfully logged out"
  	redirect_to root_path
  end
end
