class ReviewsController < ApplicationController
  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(review_params)
    @review.restaurant = @restaurant

    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new, status: :unproccessable_entity
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
    # and now it permit is true (protect our form)
  end
end