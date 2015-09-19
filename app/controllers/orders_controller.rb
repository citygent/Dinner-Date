class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def new
    @order = Order.new
    @restaurants = Restaurant.all
  end

  def create
    if order_params[:file].present?
      preloaded = Cloudinary::PreloadedFile.new(order_params[:file])
      puts "invalid upload sig" if !preloaded.valid?
      @order.photo = preloaded.identifier
    end
    order = Order.new(order_params)
    if order.save
      redirect_to order #eventually this will redirect to order.dish
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
