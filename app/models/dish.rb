class Dish < ActiveRecord::Base
  default_scope { order('created_at DESC') }
  
  has_many :orders, dependent: :destroy
  has_many :restaurants, through: :orders

  validates :name, :cuisine, presence: true
  validates :name, uniqueness: { case_sensitive: false }
end