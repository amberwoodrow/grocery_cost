class CreateStoreProducts < ActiveRecord::Migration
  def change
    create_table :store_products do |t|
      t.references :store, index: true
      t.references :product, index: true
      t.references :grocery_list, index: true
      t.decimal :cost, :precision => 8, :scale => 2

      t.timestamps null: false
    end
    add_foreign_key :store_products, :store_ids
    add_foreign_key :store_products, :product_ids
    add_foreign_key :store_products, :grocery_list_ids
  end
end
