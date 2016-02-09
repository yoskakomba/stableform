class ClientsController < ApplicationController
  before_action :set_client, only: [:edit, :update, :show]
  before_action :require_same_user, only: [:edit, :update]
  
  def index
    @clients = Client.paginate(page: params[:page], per_page: 3)
  end

  def new
    @client = Client.new
  end
  
  def create
    @client = Client.new(client_params)
    if @client.save
      #do something
      flash[:success] = "Your account has been created successfully"
      session[:client_id] = @client.id
      redirect_to new_enrollment_path
    else
      render 'new'
    end
  end
  
  def edit
    
  end
  
  def update
    if @client.update(client_params)
      flash[:success] = "Your profile has been updated successfully"
      redirect_to client_path(@client) #TODO change to show client page
    else
      render 'edit'
    end
  end
  
  def show
   
    @enrollments = @client.enrollments.paginate(page: params[:page], per_page: 3)
  end
  
  private
  
    def client_params
      params.require(:client).permit(:clientname, :email, :password)
    end
    
    def set_client
      @client = Client.find(params[:id])
    end
    
    def require_same_user
      if current_user != @client
      flash[:danger] = "You can only edit your own profile"
      redirect_to root_path
      end
    end
      
end