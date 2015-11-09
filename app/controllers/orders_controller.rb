class OrdersController < ApplicationController
  respond_to :html, :js
  
  def index
    @orders = Order.all
  end

  def new
    @order = Order.new
    @restaurants = Restaurant.all
    @order.build_restaurant #needed for Add restaurant form.
    @dishes = Dish.all
    @order.build_dish #needed for Add restaurant form!
  end

  def create
    @order = Order.new(order_params)
    if @order.save
      redirect_to @order.dish #eventually this will redirect to order.dish
    else
      render :new
    end
  end

  def show
    @order = Order.find(params[:id])
  end

private 
  def order_params
    if params[:order][:restaurant_id].blank? && params[:order][:dish_id].blank?
      params.require(:order).permit(:cost, :rating, :photo, restaurant_attributes: [:name, :description, :address, :city, :website, :phone, :picture_cache, :picture], dish_attributes: [:name, :cuisine, :description])
    elsif params[:order][:restaurant_id].blank?
      params.require(:order).permit(:dish_id, :cost, :rating, :photo, restaurant_attributes: [:name, :description, :address, :city, :website, :phone, :picture_cache, :picture])
    elsif params[:order][:dish_id].blank?
      params.require(:order).permit(:restaurant_id, :cost, :rating, :photo, dish_attributes: [:name, :cuisine, :description])
    else
      params.require(:order).permit(:restaurant_id, :dish_id, :cost, :rating, :photo)
    end

  end


end