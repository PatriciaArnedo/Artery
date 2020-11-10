class ArtworksController < ApplicationController
    before_action :find_artwork, only: [:show, :edit, :update, :destroy]

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
        if @artwork.save
            redirect_to artist_path(@artwork.artist)
        else 
            flash[:errors] = @artwork.errors.full_messages
            redirect_to new_artwork_path
        end
    end
  
    def edit
        render :edit
    end

    def update 
        if @artwork.update(artwork_params)
            redirect_to artwork_path(@artwork)
        else 
            flash[:errors] = @artwork.errors.full_messages
            redirect_to edit_artwork_path
        end
    end

    def destroy
        @artwork.destroy
        redirect_to artworks_path
    end


    private

    def find_artwork
        @artwork = Artwork.all.find(params[:id])
    end

    def artwork_params
        params.require(:artwork).permit(:artist_id, :name, :medium, :size, :img_url)
    end


end
