class CreateMenus < ActiveRecord::Migration[6.0]
  def change
    create_table :menus do |t|
      t.string :item
      t.integer :price
      t.string :item_type
      t.string :dish_type
    end
  end
end
