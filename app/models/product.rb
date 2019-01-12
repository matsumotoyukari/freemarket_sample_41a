class Product < ApplicationRecord
  belongs_to :user, foreign_key: :seller
  has_many :product_images, dependent: :destroy
  belongs_to :category
  belongs_to :area
  belongs_to :size
  accepts_nested_attributes_for :product_images
  has_one :trade ,dependent: :destroy

  enum condition: {
    unused: 1,
    close_to_unused: 2,
    no_dirt: 3,
    slightly_dirty: 4,
    dirt: 5,
    bad: 6,
  }

  enum shipmentday: {
    oneday_twoday: 1,
    twoday_threeday: 2,
    fourday_sevenday: 3
  }
end
