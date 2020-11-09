class ArtworksController < ApplicationController
    before_action :find_artwork, only: [:show, :edit, :update, :delete]

    def index
        @artworks = Artwork.all
    end
  
    def show
        render :show
    end
  
    def new
        @artwork = Artwork.new
    end

    def create 
        @artwork = Artwork.new(artwork_params)
        @artwork.save
        redirect_to artwork_path(@artwork)
    end
  
    def edit
        render :edit
    end

    def update 
        @artwork.update(artwork_params)
        redirect_to artwork_path(@artwork)
    end

    private

    def find_artwork
        @artwork = Artwork.all.find(params[:id])
    end

    def artwork_params
        params.require(:artwork).permit(:artist_id, :name, :medium, :size, :img_url)
    end


end
