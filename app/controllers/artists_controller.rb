class ArtistsController < ApplicationController
    before_action :find_artist, only: [:show, :edit, :update, :destroy]

    def index
        @artists = Artist.all
    end
  
    def show
        render :show
    end
  
    def new
        @artist = Artist.new
    end

    def create 
        @artist = Artist.new(artist_params)
        if @artist.save
            redirect_to artist_path(@artist)
        else 
            flash[:errors] = @artist.errors.full_messages
            redirect_to new_artist_path
        end
    end
  
    def edit
        render :edit
    end

    def update 
        if @artist.update(artist_params)
            redirect_to artist_path(@artist)
        else 
            flash[:errors] = @artist.errors.full_messages
            redirect_to edit_artist_path
        end
    end

    def destroy
        @artist.destroy
        redirect_to artists_path
    end

    private

    def find_artist
        @artist = Artist.all.find(params[:id])
    end

    def artist_params
        params.require(:artist).permit(:name, :location_id, :bio)
    end
end
