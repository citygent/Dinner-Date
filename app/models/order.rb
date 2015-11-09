class Order < ActiveRecord::Base
  mount_uploader :photo, OrderPhotoUploader
  belongs_to :dish
  belongs_to :restaurant

  accepts_nested_attributes_for :dish, :restaurant
end