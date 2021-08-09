class ReviewsController < ApplicationController
  before_action :find_restaurant
  
  def destroy
    @review = Review.find(params[:restorant_id])
    review.destroy
    redirect_to restaurant_path(review.restaurant)
  end

  def find_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

end
