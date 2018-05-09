class ReviewsController < ApplicationController

  def new
    @restaurant = restau_id
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.restaurant = restau_id
    if @review.save
      redirect_to restaurant_path(restau_id)
    else
      render :new
    end
  end

  private

  def restau_id
    Restaurant.find(params[:restaurant_id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end

end
