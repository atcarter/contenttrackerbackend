class ReviewsController < ApplicationController
  def index
    reviews = Review.all
    render json: reviews
  end

  def show
    if the_review_exists?
      review = Review.find_by_id(params[:id])
      render json: review
    else
      render json: {error: "Review not found."}
    end
  end

  def create
    review = Review.new(content_params)

    if review.save
      render json: review
    end
  end

  def destroy
    review = Review.find_by_id(params[:id])
    name = review.username
    review.destroy
    render json: {alert: "#{name}'s review was deleted."}
  end

  private

  def the_review_exists?
    params[:id] && Review.exists?(params[:id])
  end

  def review_params
    params.require(:review).permit(:username, :rating, :description, :content_id)
  end
end
