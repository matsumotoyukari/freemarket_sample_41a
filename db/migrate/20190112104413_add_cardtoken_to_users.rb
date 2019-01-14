class AddCardtokenToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :cardtoken, :string, null: false
  end
end
