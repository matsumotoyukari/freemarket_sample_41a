class ProductImage < ApplicationRecord
  belongs_to :product, optional: true, inverse_of: :product_images
  mount_uploader :image, ImageUploader

  validates_presence_of :product
end
