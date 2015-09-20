class DishesController < ApplicationController

  def index
    @dishes = Dish.all
  end

  def create
    dish = Dish.new(dish_params)
    if dish.save
      redirect_to new_order_path
    else
      redirect_to new_order_path
    end
  end  

  def show
    @dish = Dish.find(params[:id])
    @dishes = Dish.all
  end

private 
  def dish_params
    params.require(:dish).permit(:name, :cuisine, :description)
  end

end
