class BodiesController < ApplicationController
  def new
    @body = Body.new 
  end
  
  def create
    @body = Body.new(body_params)
    if @body.save
      flash[:success] = 'Skip body area was created succesfully'
      redirect_to enrollments_path
    else
      render 'new'
    end
  end
  
  private
  
  def body_params
    params.require(:body).permit(:name)
  end
end