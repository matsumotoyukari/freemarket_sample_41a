class ChangeDatatypeSellerRateOfRate < ActiveRecord::Migration[5.0]
  def change
    change_column :rates, :seller_rate, :integer,null: true
  end
end
