module DishesHelper
  def average_price(dish)
    dish.orders.map(&:cost).inject(:+) / dish.orders.size
  end

  def average_rating(dish)
    dish.orders.map(&:rating).inject(:+) / dish.orders.size
  end
end
