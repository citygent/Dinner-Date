class Restaurant < ActiveRecord::Base
  mount_uploader :picture, OrderPhotoUploader
  has_many :orders, dependent: :destroy
  has_many :dishes, through: :orders
end
