class CartArtsController < ApplicationController

    def new
        @cart_art = CartArt.new
    end

    def create
        @cart_art = CartArt.create(cart_art_params)
        redirect_to cart_path(@cart_art.artwork.id)
    end

    private
    
    def cart_art_params
        params.require(:cart_art).permit(:cart_id, :artwork_id)
    end
end
