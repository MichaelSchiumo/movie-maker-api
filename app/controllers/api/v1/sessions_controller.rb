class Api::V1::SessionsController < ApplicationController

  def create
    @user = User.find_by(username: params[:user][:username])
    if @user && @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id 
      render json: @user, status: 200
    else 
      render json: { errors: ['Unable to login.'] }, status: 400
    end
  end

  def destroy 
    session.clear
  end

end
