class HealthsController < ApplicationController
  def new
    @health = Health.new
  end
  
  def create 
    @health = Health.new(health_params)
    if @health.save
      flash[:success] = "Health condition info was created successfully"
      redirect_to enrollments_path
    else
      render 'new'
    end
  end
  
  private
  
  def health_params
    params.require(:health).permit(:name)
  end
end