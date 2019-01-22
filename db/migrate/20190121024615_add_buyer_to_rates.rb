class AddBuyerToRates < ActiveRecord::Migration[5.0]
  def change
    add_reference :rates, :buyer, foreign_key: { to_table: :users }
  end
end
