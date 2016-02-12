class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  helper_method :current_user, :logged_in?
  
  def current_user
    @current_user ||= Client.find(session[:client_id]) if session[:client_id]
  end
  
  def logged_in?
    !!current_user
  end
  
  def require_user
    if !logged_in?
      flash[:danger] = "You must be logged in to perform that action"
      redirect_to client_path(current_user)
    end
  end
  
  def require_same_user
    if !logged_in?
      flash[:danger] = "You can only edit your own recipes"
      redirect_to client_path(current_user)
    end
  end
  
  def authorize_admin
    if !current_user.admin
      flash[:danger] = "I am sorry only admin can view this page"
      redirect_to client_path(current_user)
    end
  end

end
