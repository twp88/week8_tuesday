class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurnt = Restaurant.create(restaurant_params)
    redirect_to '/restaurants'
  end

private

def restaurant_params
  params.require(:restaurant).permit(:name)
end

end
