class ArtistsController < ApplicationController
    before_action :find_artist, only: [:show, :edit, :update, :delete]

    def index
        @artists = artist.all
    end
  
    def show
        render :show
    end
  
    def new
        @artist = Artist.new
    end

    def create 
        @artist = Artist.new(artist_params)
        @artist.save
        redirect_to artist_path(@artist)
    end
  
    def edit
        render :edit
    end

    def update 
        @artist.update(artist_params)
        redirect_to artist_path(@artist)
    end

    private

    def find_artist
        @artist = Artist.all.find(params[:id])
    end

    def artist_params
        params.require(:artist).permit(:name, :location_id)
    end
end
