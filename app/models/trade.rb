class Trade < ApplicationRecord
  belongs_to :product
  belongs_to :user,optional: true
end
