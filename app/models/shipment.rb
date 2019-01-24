class Shipment < ApplicationRecord
  scope :exhibitor, -> {where(shipingfee_id: 1)}
  scope :buyer , -> {where(shipingfee_id: 2)}
end
