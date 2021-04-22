class ReviewsController < ApplicationController
  before_action :find_restaurant

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    review.save
    redirect_to restaurant_path(@restaurant)
    # redirect to restaurant/sho
  end

  private

  def find_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
    # :id => :restaurant_id
  end

  def review_params
    params.require(:review).permit(:content)
  end
end
