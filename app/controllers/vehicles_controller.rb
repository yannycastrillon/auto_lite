class VehiclesController < ApplicationController
  extend VehicleService
  before_action :set_vehicle, only: [:show, :update, :destroy]

  def index
    @vehicles = VehicleService.all_vehicles
  end

  def show
  end

  def home
    render 'vehicles/home'
  end

  private
    def set_vehicle
      @vehicle = Vehicle.find_by_vin(params[:id])
      unless @vehicle
        @vehicle = create_vehicle
      end
    end

    def create_vehicle
      new_vehicle = Vehicle.new(vehicle_params)
      new_vehicle.vin = params[:id]
      new_vehicle.pic_url = params['primary_photo_url']
      new_vehicle if new_vehicle.save
    end

    def vehicle_params
      params.permit(:vin, :model, :make, :year, :times_view, :pic_url)
    end
end
