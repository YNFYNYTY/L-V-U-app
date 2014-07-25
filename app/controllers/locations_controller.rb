class LocationsController < ApplicationController
  def index
    @locations = Location.all
  end

  def show
    @location = Location.find_by(id: params[:id])
    render '404', status: 404 unless @location
  end
end
