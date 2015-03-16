class CreateGroceryLists < ActiveRecord::Migration
  def change
    create_table :grocery_lists do |t|
      t.text :body

      t.timestamps null: false
    end
  end
end
