class RemoveMessageFromRates < ActiveRecord::Migration[5.0]
  def change
    remove_column :rates, :message, :text
  end
end
