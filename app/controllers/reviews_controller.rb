class ReviewsController < ApplicationController

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review     = Review.new
  end

  def create
    # render plain: restaurant_params.inspect

   @restaurant = Restaurant.find(params[:restaurant_id])
   @review     = @restaurant.reviews.create(review_params)
   redirect_to restaurant_path(@restaurant)

   #  if @review.save
   #    redirect_to @restaurant, notice: "Review Successfully Added!"
   #  else
   #    render action: 'new'
   #  end
  end

private

def review_params
    params.require(:review).permit(:reviewer, :rating, :body)
      # The last two (description and category are optional)
  end

end
