class LocationsController < ApplicationController
  before_action :set_location, only: [:show, :edit, :update, :destroy]

  # GET /locations
  # GET /locations.json
  def index
    @locations = Location.all
  end

  # GET /locations/1
  # GET /locations/1.json
  def show
  end

  # GET /locations/new
  def new
    @location = Location.new
  end

  # GET /locations/1/edit
  def edit
  end

  # POST /locations
  # POST /locations.json
  def create
    @location = Location.new(location_params)

    if @location.save
      flash[:success] = "HCPS Location was successfully created"
      redirect_to locations_path
    else
      render 'new'
    end 
  end

  # PATCH/PUT /locations/1
  # PATCH/PUT /locations/1.json
  def update
    if @location.update(location_params)
      flash[:success] = "Location was successfully updated"
      redirect_to locations_path
    else
      render 'edit'
    end 
  end

  # DELETE /locations/1
  # DELETE /locations/1.json
  def destroy
    @location.destroy
    flash[:danger] = "Location was successfully deleted"
    redirect_to locations_path 
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
