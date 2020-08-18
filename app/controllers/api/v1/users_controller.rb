class Api::V1::UsersController < ApplicationController

  def create
    @user = User.new(user_params)
    if @user.save
      log_in(@user)
      render json: @user, status: 200
    else
      render json: { errors: @user.errors.full_messages }, status: 400
    end
  end
end
