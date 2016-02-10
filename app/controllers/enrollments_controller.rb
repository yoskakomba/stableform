class EnrollmentsController < ApplicationController
  before_action :set_enrollment, only: [:edit, :update, :show]
  before_action :require_user, except: [:show, :index]
  before_action :require_same_user, only: [:edit, :update]
  
  def index
    @enrollments = Enrollment.paginate(page: params[:page], per_page: 4)
  end
  
  def show
    
  end
  
  def new
    @enrollment = Enrollment.new
  end
  
  def create
    @enrollment = Enrollment.new(enrollment_params)
    @enrollment.client = current_user
    
    if @enrollment.save
      flash[:success] = "Your enrollment was created successfully!"
      redirect_to client_path(@enrollment.client)
    else
      render :new
    end
  end
  
  def edit
    
  end
  
  def update
   
    if @enrollment.update(enrollment_params)
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
      :telephone, :post_code, :exercise, reference_ids: [], preference_ids: [])
    end
    
    def set_enrollment
       @enrollment = Enrollment.find(params[:id])
    end
    
    def require_same_user
      if current_user != @enrollment.client
        flash[:danger] = "You can only edit your own recipes"
        redirect_to enrollments_path
      end
    end
    
    
  
end