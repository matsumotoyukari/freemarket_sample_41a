class Product < ApplicationRecord
  belongs_to :user, foreign_key: :seller
  has_many :product_images, dependent: :destroy
  belongs_to :category
  belongs_to :area
  belongs_to :size
  accepts_nested_attributes_for :product_images
end
