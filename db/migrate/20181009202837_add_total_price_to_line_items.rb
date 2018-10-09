class AddTotalPriceToLineItems < ActiveRecord::Migration[5.2]
  def change
    add_column :line_items, :totalPrice, :decimal,default: 1
  end
end
