class Api::V1::SessionsController < ApplicationController
    def create
        @user = User.find_by(username: params[:session][:username])
        if @user && @user.authenticate(params[:session][:password])
            session[:user_id] = @user.id
            render json: @user
        else
            render json: {error: "Invalid Username or Password"}
        end
    end
    
    def get_current_user
        if logged_in?
            render json: current_user 
        else
            render json: {notice: "You are logged off, no one is logged in"}
        end
    end
end
