class ChangeColumnToForeignKey < ActiveRecord::Migration[5.0]
  def change
    add_foreign_key :shipments, :shipingfees, column: :shipingfee_id
  end
end
