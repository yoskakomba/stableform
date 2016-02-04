class EnrollmentsController < ApplicationController
  
  def index
    @enrollments = Enrollment.all
  end
  
  def show
    @enrollment = Enrollment.find(params[:id])
  end
  
  def new
    @enrollment = Enrollment.new
  end
  
  def create
    @enrollment = Enrollment.new(enrollment_params)
    @enrollment.client = Client.find(2)
    
    if @enrollment.save
      flash[:success] = "Your enrollment was created successfully!"
      redirect_to enrollments_path
    else
      render :new
    end
  end
  
  def edit
    @enrollment = Enrollment.find(params[:id])
  end
  
  def update
    @enrollment = Enrollment.find(params[:id])
    if @enrollment.update(enrollment_params)
      #do something
      flash[:success] = "Your enrollment was updated successfully!"
      redirect_to enrollment_path(@enrollment)
    else
      render :edit
    end
      
  end
  
  private
  
    def enrollment_params
      params.require(:enrollment).permit(:name, :last_name, :dob, :address,
      :suburb, :occupation, :past_medical_history, :medication, :symptoms,
      :telephone, :post_code)
    end
    
    
  
end