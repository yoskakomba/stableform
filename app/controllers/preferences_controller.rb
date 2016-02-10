class PreferencesController < ApplicationController
  
  def show
    @preference = Preference.find(params[:id])
    @enrollments = @preference.enrollments.paginate(page: params[:page], per_page: 4)
  end
  
  def new
    @preference = Preference.new
  end
  
  def create
    @preference = Preference.new(preference_params)
    if @preference.save
      flash[:success] = "Preferences was created succesfully"
      redirect_to enrollments_path
    else
      render 'new'
    end
    
  end
  
  private
  
  def preference_params
    params.require(:preference).permit(:name)
  end
end