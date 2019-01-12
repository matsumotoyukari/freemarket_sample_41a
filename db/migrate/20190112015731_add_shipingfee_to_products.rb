class AddShipingfeeToProducts < ActiveRecord::Migration[5.0]
  def change
    add_reference :products, :shipingfee, foreign_key: true
  end
end
