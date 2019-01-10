class CreateTrades < ActiveRecord::Migration[5.0]
  def change
    create_table :trades do |t|
      t.references :product ,foreign_key: true,null: false
      t.references :user , foreign_key: true, null: true
      t.boolean :deal, default: false

      t.timestamps
    end
  end
end
