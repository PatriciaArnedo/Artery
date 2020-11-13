class UsersController < ApplicationController

    before_action :find_user, only: [:show, :edit, :index, :update]
    #skip_before_action :require_login, only: [:new, :create]

    def index
        #we are using this as a user account page 
        #@user = @current_user
    end

    def show
        #we are using this as a cart page - it contains the user's cart instances
        #@user = @current_user
        render :show
    end

    def new
        @user = User.new
    end
    
    def create
        @user = User.create(user_params)
        if @user.valid?
            session[:user_id] = @user.id
            redirect_to root_path
        else
            flash[:errors] = @user.errors.full_messages
            redirect_to new_user_path
        end
    end

    def edit
        
        render :edit
    end

    def update
        #@user= @current_user
        if @user.update(user_params)
            redirect_to users_path
        else
            flash[:errors] = @user.errors.full_messages
            redirect_to edit_user_path
        end
    end



    private

    def find_user
        @user = @current_user
    end

    def user_params
        params.require(:user).permit(:username, :email, :password, :password_confirmation, :zip_code)
    end
end
