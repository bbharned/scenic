class LocationsController < ApplicationController
  before_action :set_location, only: [:show, :edit, :update, :destroy]
  before_action :require_user

  
  def index
    #paginaton needed
    @locations = Location.paginate(page: params[:page], per_page: 25).order("name asc")
  end


  


  
  def show
    @orders = @location.orders
    @openorders = @location.orders.where(completed: false)
    @closedorders = @location.orders.where(completed: true)
  end

  
  def new
    @location = Location.new
  end

  
  def edit
  end

  
  def create
    @location = Location.new(location_params)

    if @location.save
      flash[:success] = "HCPS Location was successfully created"
      redirect_to locations_path
    else
      render 'new'
    end 
  end

  
  def update
    if @location.update(location_params)
      flash[:success] = "Location was successfully updated"
      redirect_to locations_path
    else
      render 'edit'
    end 
  end

  
  def destroy
    @orders = Order.where(location_id: @location.id)
    if @location.destroy
      flash[:danger] = "Location was successfully deleted"
        if @orders.any?
          @orders.destroy_all
        end
        redirect_to locations_path
    else
      flash[:danger] = "There was a problem removing the location."
      redirect_to events_path
    end 
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_location
      @location = Location.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def location_params
      params.require(:location).permit(:scl_ref, :name, :sc_type, :address, :area)
    end
end
