class DishesController < ApplicationController

  def index
    @dishes = Dish.all
  end

  def new
    @dish = Dish.new
  end

  def create
    @dish = Dish.new(dish_params)
    respond_to do |format|
      if @dish.save
        # format.html { redirect_to @dish, notice: 'Upload was successfully created.' }
        format.json { render json: @dish }
        format.js { @dishes = Dish.all }
    else
      redirect_to new_order_path
    end
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
