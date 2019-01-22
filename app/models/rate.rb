class Rate < ApplicationRecord
  belongs_to :user, foreign_key: :seller_id, optional: true
  belongs_to :user, foreign_key: :buyer_id, optional: true
  belongs_to :product
end
