class ChangeColumnToNotNull < ActiveRecord::Migration[5.0]
  def change
    change_column_null :users, :cardtoken, true
  end
end
