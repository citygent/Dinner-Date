module DishesHelper
  def average_price(dish)
    dish.orders.map(&:cost).inject(:+) / dish.orders.size
  end

  def average_rating(dish) #or restaurant
    dish.orders.map(&:rating).inject(:+) / dish.orders.size
  end

  def random_pic(dish)
    dish.orders.order("RANDOM()").first.photo
  end
  
end
