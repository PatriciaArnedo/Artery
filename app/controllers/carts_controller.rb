class CartsController < ApplicationController
    
    
    def show
        @cart = Cart.find(params[:id])
    end

    def destroy
        @cart = Cart.find(params[:id])
        @cart.destroy
        redirect_to '/artworks'
    end
end
