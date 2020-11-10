class CartsController < ApplicationController
    before_action :find_cart, only: [:show, :destroy]

    def new
        @cart = Cart.new
    end

    def show
        @cart = Cart.find(params[:id])
    end

    def create
        @cart = Cart.create(cart_params)
        redirect_to user_path(@cart.user)
    end

    def destroy
        @cart.destroy
        redirect_back fallback_location: users_path
    end

    private

    def find_cart
        @cart = Cart.all.find(params[:id])
    end

    def cart_params
        params.require(:cart).permit(:user_id, :artwork_id)
    end
end

