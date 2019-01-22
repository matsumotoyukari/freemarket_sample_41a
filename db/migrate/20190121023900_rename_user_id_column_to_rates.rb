class RenameUserIdColumnToRates < ActiveRecord::Migration[5.0]
  def change
    rename_column :rates, :user_id,:seller_id
  end
end
