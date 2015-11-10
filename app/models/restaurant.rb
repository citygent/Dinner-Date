class Restaurant < ActiveRecord::Base
  default_scope { order('created_at DESC') }
  
  mount_uploader :picture, OrderPhotoUploader
  has_many :orders, dependent: :destroy
  has_many :dishes, through: :orders

  validates :name, :city, presence: true
end
