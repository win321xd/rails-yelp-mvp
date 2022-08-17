class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: %i[show edit update destroy]

  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params: [restaurant_id])
  end

  def new
    @restaurant = Restaurant.new(restaurant_params)
  end


  # def create
  #   @restaurant = Restaurant.new(restaurant_params)
  #   @restaurant.save
  #   redirect_to restaurants_path(@restaurant)
  # end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end
