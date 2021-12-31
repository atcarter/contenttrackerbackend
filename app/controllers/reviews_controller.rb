class ReviewsController < ApplicationController
  def index
    reviews = Review.all
    render json: reviews
  end

  private

  def the_review_exists?
    params[:id] && Review.exists?(params[:id])
  end

  def review_params
    params.require(:review).permit(:username, :rating, :description, :content_id)
  end
end
