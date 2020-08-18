class Api::V1::ReviewsController < ApplicationController

  def create 
    @review = Review.new(review_params)
    @movie = Movie.find_by(id: params[:movie_id])
    if @review.save
      render json: @review, status: 200
    else 
      render json: { errors: @review.errors.full_messages }, status: 400
    end
  end

  def movie_reviews
    @movie = Movie.find_by(id: params[:id]) 
    @reviews = @movie.reviews
    render json: @reviews, except: [:created_at, :updated_at], status: 200
  end
  
  private 

  def review_params
    params.require(:review).permit(:user_id, :movie_id, :comment, :score)
  end
end
