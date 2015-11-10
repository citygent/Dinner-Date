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
    @order = Order.new
    @restaurants = Restaurant.all
    @order.build_restaurant #needed for Add restaurant form.
    @dishes = Dish.all
    @order.build_dish #needed for Add restaurant form!
    # Quick and dirty fix, not all of the above are needed but it threw errors and I think it has something to do with render :new not being passed what's in the new action above when it is told to render by the create action? 

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
      params.require(:order).permit(:cost, :rating, :photo, :photo_cache, restaurant_attributes: [:name, :description, :address, :city, :website, :phone, :picture_cache, :picture], dish_attributes: [:name, :cuisine, :description])
    elsif params[:order][:restaurant_id].blank?
      params.require(:order).permit(:dish_id, :cost, :rating, :photo, :photo_cache, restaurant_attributes: [:name, :description, :address, :city, :website, :phone, :picture_cache, :picture])
    elsif params[:order][:dish_id].blank?
      params.require(:order).permit(:restaurant_id, :cost, :rating, :photo, :photo_cache, dish_attributes: [:name, :cuisine, :description])
    else
      params.require(:order).permit(:restaurant_id, :dish_id, :cost, :rating, :photo, :photo_cache)
    end
  end
end