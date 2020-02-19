class RestaurantsController < ApplicationController
  before_action :find_restaurant, only: [:show]

  def index
    @restaurants = Restaurant.all
  end

  def show
    # before_action
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.create(restaurant_params)

    if @restaurant.save # => false / true
      redirect_to @restaurant, notice: 'Restaurant was successfully created.'
    else
      # redirect_to new_restaurant_path WRONG!
      render :new # please render new.html.erb!
    end
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :category)
  end

  def find_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end
