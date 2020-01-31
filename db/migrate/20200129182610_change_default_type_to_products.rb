class ChangeDefaultTypeToProducts < ActiveRecord::Migration[6.0]
  def change
    change_column :products, :p_price, :float
    change_column :products, :p_shipping, :float
  end
end
