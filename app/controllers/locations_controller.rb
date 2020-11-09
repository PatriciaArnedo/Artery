class LocationsController < ApplicationController
    before_action :find_location, only: [:show, :edit, :update, :delete]

    def index
        @locations = Location.all
    end
  
    def show
        render :show
    end
  
    def new
        @location = Location.new
    end

    def create 
        @location = Location.new(location_params)
        @location.save
        redirect_to location_path(@location)
    end
  
    def edit
        render :edit
    end

    def update 
        @location.update(location_params)
        redirect_to location_path(@location)
    end

    private

    def find_location
        @location = Location.all.find(params[:id])
    end

    def location_params
        params.require(:location).permit(:city_state, :zip_code)
    end

end
