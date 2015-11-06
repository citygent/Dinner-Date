class OrdersController < ApplicationController
  respond_to :html, :js
  
  def index
    @orders = Order.all
  end

  def new
    @order = Order.new
    @restaurants = Restaurant.all
    @restaurant = Restaurant.new #needed for Add restaurant form.
    @dish = Dish.new #needed for Add Dish form.
    @dishes = Dish.all
  end

  def create
    @order = Order.new(order_params)
    if @order.save
      redirect_to @order #eventually this will redirect to order.dish
    else
      render :new
    end
  end

  def show
    @order = Order.find(params[:id])
  end

private 
  def order_params
    params.require(:order).permit(:restaurant_id, :dish_id, :cost, :rating, :photo)
  end



end
