class AddNullFalseToProductFields < ActiveRecord::Migration[7.0]
  def change
    change_column_null :products, :titel, false
    change_column_null :products, :description, false
    change_column_null :products, :price, false
  end
end
