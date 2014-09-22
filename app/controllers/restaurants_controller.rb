class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @reviews    = @restaurant.reviews
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)

    if @restaurant.save
      redirect_to @restaurant, notice: "Restaurant Successfully Added!"
    else
      render action: 'new'
    end
  end


  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def update
    @restaurant = Restaurant.find(params[:id])

    if @restaurant.update(restaurant_params)
      redirect_to @restaurant, notice: "Restaurant Successfully Updated!"
    else
      render :action => :edit
    end
  end


  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :city, :state, :zip_code, :category, :description)
      # The last two (description and category are optional)
  end


end
