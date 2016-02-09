class PagesController < ApplicationController
  def home
    redirect_to enrollments_path if logged_in?
    
  end
end