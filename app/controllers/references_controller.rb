class ReferencesController < ApplicationController
  
  def show
    @reference = Reference.find(params[:id])
    @enrollments = @reference.enrollments.paginate(page: params[:page], per_page: 4)
  end
  
  def new
    @reference = Reference.new
  end

  def create
    @reference = Reference.new(reference_params)
    if @reference.save
      flash[:success] = "Reference was created successfully"
      redirect_to enrollments_path
    else
       
    render 'new'
    end
  end
  
  
  private
  
  def reference_params
    params.require(:reference).permit(:name)
  end
end