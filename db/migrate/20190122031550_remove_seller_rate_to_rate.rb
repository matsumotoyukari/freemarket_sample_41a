class RemoveSellerRateToRate < ActiveRecord::Migration[5.0]
  def change
    remove_column :rates, :seller_rate, :integer
  end
end
