class SearchVehiclesController < ApplicationController
  extend VehicleService

  def search_price
    if params[:min]&.empty? || params[:max]&.empty?
      payload = { status: 400, error: "Missing min or max params" }
      render json: payload, status: :bad_request
    else
      session[:min] = params[:min]
      session[:max] = params[:max]
      @search_vehicles = VehicleService.search_min_max_price(search_params)
    end
  end

  private

  def search_params
    params.permit(:min, :max)
  end
end
