class SearchVehiclesController < ApplicationController
  extend VehicleService

  def search_price
    @search_vehicles = VehicleService.search_min_max_price(search_params)
  end

  private

  def search_params
    params.permit(:min, :max)
  end
end
