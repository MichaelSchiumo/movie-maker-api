class Api::V1::MoviesController < ApplicationController

  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      render json: @movie, status: 200
    else
      render json: { errors: @movie.errors.full_messages }, status: 400
    end
  end


  private 

  def movie_params
    params.require(:movie).permit(:img_url, :description, :user_id)
  end
end
