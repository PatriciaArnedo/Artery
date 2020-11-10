class LocationsController < ApplicationController
    before_action :find_location, only: [:show, :edit, :update, :destroy]

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
        if @location.save
            redirect_to location_path(@location)
        else 
            flash[:errors] = @location.errors.full_messages
            redirect_to new_location_path
        end
    end
  
    def edit
        render :edit
    end

    def update 
        if @location.update(location_params)
            redirect_to location_path(@location)
        else 
            flash[:errors] = @location.errors.full_messages
            redirect_to edit_location_path
        end
    end

    def destroy
        @location.destroy
        redirect_to locations_path
    end


    private

    def find_location
        @location = Location.all.find(params[:id])
    end

    def location_params
        params.require(:location).permit(:city_state, :zip_code)
    end

end
