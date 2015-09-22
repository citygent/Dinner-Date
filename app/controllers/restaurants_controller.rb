class RestaurantsController < ApplicationController
  # respond_to :html, :js

  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end
  
  def create
    @restaurant = Restaurant.new(restaurant_params)
    respond_to do |format|
      if @restaurant.save
        # format.html { redirect_to @restaurant, notice: 'Upload was successfully created.' }
        format.json { render json: @restaurant }
        format.js { @restaurants = Restaurant.all }
      else
        redirect_to new_order_path
      end
    end
  end  

  def show
    @restaurant = Restaurant.find(params[:id])
  end

private 
  def restaurant_params
    params.require(:restaurant).permit(:name, :description, :address, :city, :website, :phone, :picture_cache, :picture)
  end


end
