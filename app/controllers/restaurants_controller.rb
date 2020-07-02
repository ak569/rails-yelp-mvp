class RestaurantsController < ApplicationController

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
  end

  def index
    @restaurant = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :star)
  end
end
