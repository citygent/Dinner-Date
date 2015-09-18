class Dish < ActiveRecord::Base
  has_many :orders, dependent: :destroy
  has_many :restaurants, through: :orders
end
