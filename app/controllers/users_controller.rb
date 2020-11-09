class UsersController < ApplicationController

    before_action :find_user, only: [:show, :edit, :update]

    def index
        @users = User.all
    end

    def show
    end

    def new
        @user = User.new
    end
    
    def create
        @user = User.create!(user_params)
        redirect_to user_path(@user)
    end

    def edit
    end

    def update
        if @user.update(user_params)
            redirect_to user_path(@user)
        else
            flash[:user_error] = @user.errors.full_messages
            redirect_to edit_user_path
        end
    end

    private

    def find_user
        @user = User.find(params[:id])
    end

    def user_params
        params.require(:user).permit(:username, :email, :password, :zip_code)
    end
end
