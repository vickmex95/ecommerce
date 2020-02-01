class CreateMyimages < ActiveRecord::Migration[6.0]
  def change
    create_table :myimages do |t|
      t.string :img
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
