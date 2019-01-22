class AddSellerRateToRates < ActiveRecord::Migration[5.0]
  def change
    add_column :rates, :seller_rate, :integer,null: true
  end
end
