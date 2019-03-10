class CreateProducts < ActiveRecord::Migration[5.2]change_column :products, :price, "numeric USING CAST(price AS numeric)"
  change_column :products, :price, :decimal, precision: 9, scale: 2
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price
      t.string :image_url
      t.string :description

      t.timestamps
    end
  end
end