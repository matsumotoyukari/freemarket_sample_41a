class AddIndexToLike < ActiveRecord::Migration[5.0]
  def change
    add_index :likes, [:product_id, :user_id], unique: true
  end
end
