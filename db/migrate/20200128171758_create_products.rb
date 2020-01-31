class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :p_name
      t.text :p_description
      t.decimal :p_price
      t.integer :p_quantity
      t.decimal :p_shipping
      t.boolean :p_available
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
