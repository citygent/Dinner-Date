class Restaurant < ActiveRecord::Base
  has_many :orders, dependent: :destroy
  has_many :dishes, through: :orders
end
