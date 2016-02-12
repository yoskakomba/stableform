class LoginsController < ApplicationController
  
  def new
    
  end
  
  def create
    client = Client.find_by(email: params[:email])
    if client && client.authenticate(params[:password])
      session[:client_id] = client.id
      flash[:success] = "You are logged in"
      redirect_to new_enrollment_path
    else
      flash.now[:danger] = "Your email address or password does not match"
      render 'new'
    end
    
    
  end
  
  def destroy
    session[:client_id] = nil
    flash[:success] = "You have logged out"
    redirect_to root_path
  end
  
  
end