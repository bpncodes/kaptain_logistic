class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.integer :quantity_in_stock
      t.decimal :weight
      t.string :dimensions
      t.string :category
      t.decimal :price
      t.string :supplier

      t.timestamps
    end
  end
end
