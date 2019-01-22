class RenameRateColumnToRates < ActiveRecord::Migration[5.0]
  def change
    rename_column :rates, :rate,:seller_rate
    add_column :rates, :buyer_rate, :integer
  end
end
