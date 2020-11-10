class SessionsController < ApplicationController

    skip_before_action :require_login, only: [:new, :create]

    def new
    end

    def logout 
        session.delete(:user_id)
        redirect_to artworks_path
    end 

    def create
        @user = User.find_by(username: params[:session][:username])

        if @user && @user.authenticate(params[:session][:password])
            session[:user_id] = @user.id
            redirect_to artworks_path
        else
            flash[:errors] = "Username or Password is incorrect, please try again!"
            redirect_to new_sign_in_path
        end
    end

end