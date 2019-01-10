class Product < ApplicationRecord
  belongs_to :user, foreign_key: :seller
  has_many :product_images, dependent: :destroy
  belongs_to :category
  belongs_to :area
  belongs_to :size
  accepts_nested_attributes_for :product_images

  enum condition:["商品状態が入力されていません","新品、未使用","未使用に近い","目立った傷や汚れなし","やや傷や汚れあり","傷や汚れあり","全体的に状態が悪い"]
  enum shipmentday:["配送日時が入力されていません","1日~2日で発送","2日~3日で発送","4日~7日で発送"]

end
