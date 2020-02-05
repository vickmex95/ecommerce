class CreateMyimages < ActiveRecord::Migration[6.0]
  def change
    create_table :myimages do |t|
      t.attachment :img
      t.string :title
      t.text :description
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
