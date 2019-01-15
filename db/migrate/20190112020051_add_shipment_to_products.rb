class AddShipmentToProducts < ActiveRecord::Migration[5.0]
  def change
    add_reference :products, :shipment, foreign_key: true
  end
end
