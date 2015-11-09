class OrdersController < ApplicationController
  respond_to :html, :js
  
  def index
    @orders = Order.all
  end

  def new
    @order = Order.new
    @restaurants = Restaurant.all
    @order.build_restaurant#needed for Add restaurant form.
    @dish = Dish.new #needed for Add Dish form.
    @dishes = Dish.all
  end

  def create
    @order = Order.new(order_params)
    if @order.save
      redirect_to @order.restaurant #eventually this will redirect to order.dish
    else
      render :new
    end
  end

  def show
    @order = Order.find(params[:id])
  end

private 
  def order_params
    if params[:order][:restaurant_id].blank?
      params.require(:order).permit( :dish_id, :cost, :rating, :photo, restaurant_attributes: [:name, :description, :address, :city, :website, :phone, :picture_cache, :picture], dish_attributes: [:name, :cuisine, :description])
    else
      params.require(:order).permit(:restaurant_id, :dish_id, :cost, :rating, :photo, dish_attributes: [:name, :cuisine, :description])
    end

    # if params[:order][:dish_id].blank?
    #   filtered_restaurant_params.require(:order).permit( dish_attributes: [:name, :cuisine, :description])
    # else
    #   params.require(:order).permit(:restaurant_id, :dish_id, :cost, :rating, :photo, dish_attributes: [:name, :cuisine, :description])
    # end

    # return final_filtered_params
  end

  def restaurant_params
    params.require(:restaurant).permit()
  end

end