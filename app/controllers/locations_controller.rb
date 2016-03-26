class LocationsController < ApplicationController
  def create
    Location.create(location_params)
    redirect_to root_path
  end

  private

  def location_params
    params.require(:location).permit(:town_name, :state)
  end
end