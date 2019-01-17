class AddCustomeridToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :customerid, :string
  end
end
