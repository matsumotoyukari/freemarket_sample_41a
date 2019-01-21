class Comment < ApplicationRecord
  belongs_to :product
  belongs_to :user

  with_options presence: true do
    validates :product_id
    validates :text
    validates :user_id
  end
end
