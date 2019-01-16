class Product < ApplicationRecord
  belongs_to :user, foreign_key: :seller
  has_many :product_images, dependent: :destroy, inverse_of: :product
  belongs_to :category
  belongs_to :area
  belongs_to :size
  accepts_nested_attributes_for :product_images
  has_one :trade ,dependent: :destroy

  with_options presence: true do
    validates :name, length: { maximum: 40 }
    validates :detail, length: { maximum: 1000 }
    validates :category_id
    #validates :condition
    #validates :size_id
    #validates :shipingfee_id
    #validates :shipment_id
    #validates :area_id
    #validates :shipmentday
    validates :product_images
    #validates :price, numericality: { greater_than_or_equal_to: 300, less_than_or_equal_to: 9999999 }
  end

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
