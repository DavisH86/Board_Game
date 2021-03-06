class LocationsController < ApplicationController
  def index
    @locations = Location.all
  end

  def new
    @location = Location.new
  end

  def show
    @location = Location.find(params[:id])
  end

  def create
    @location = Location.new(location_params)

    if @location.save
      render :show
    else
      render :new
    end
  end

  private
  def location_params
    params.require(:location).permit(:name, :address, :event)
  end

end
