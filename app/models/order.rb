class Order < ActiveRecord::Base
  default_scope { order('created_at DESC') }
  mount_uploader :photo, OrderPhotoUploader
  belongs_to :dish
  belongs_to :restaurant

  # validates :dish, presence: true
  # validates :restaurant, presence: true

  accepts_nested_attributes_for :dish, :restaurant

  validates :cost, numericality: { greater_than: 0.99 }

  validates :rating, presence: true
  # :photo?

  # validates_associated?

end