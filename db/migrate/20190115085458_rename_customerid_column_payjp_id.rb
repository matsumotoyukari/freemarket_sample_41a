class RenameCustomeridColumnPayjpId < ActiveRecord::Migration[5.0]
  def change
    rename_column :users, :customerid, :payjp_id
  end
end
