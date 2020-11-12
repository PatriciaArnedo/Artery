class CartsController < ApplicationController
    before_action :find_cart, only: [:show, :destroy]

    def new
        @cart = Cart.new
    end

    def show
    end

    def create
        @cart = Cart.new#(cart_params)
        @cart.user_id = @current_user.id
        @artwork = Artwork.all.find(params[:id])
        @cart.artwork_id = @artwork.id
        if @cart.save
            redirect_to user_path(@cart.user)
        else  
            flash[:cart_error] = "This item couldn't be added to your cart."
            redirect_back fallback_location: artworks_path
        end
    end
    
    def destroy
        @cart.destroy
        redirect_back fallback_location: users_path
    end

    private

    def find_cart
        @cart = Cart.all.find(params[:id])
    end

    # def cart_params
    #     params.permit(:user_id, :artwork_id)
    # end
end

