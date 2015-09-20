class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def create
    restaurant = Restaurant.new(restaurant_params)
    if restaurant.save
      redirect_to new_order_path
    else
      render :new
    end
  end  

  def show
    @restaurant = Restaurant.find(params[:id])
  end

private 
  def restaurant_params
    params.require(:restaurant).permit(:name, :description, :address, :city, :website, :phone, :picture)
  end


end
