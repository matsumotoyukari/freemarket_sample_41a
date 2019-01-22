class CreateRates < ActiveRecord::Migration[5.0]
  def change
    create_table :rates do |t|
      t.text :message,null: true
      t.references :user,null: false,foreign_key: true
      t.references :product,null: false,foreign_key: true,unique: true
      t.integer :rate,null:false

      t.timestamps
    end
  end
end
