class AddExtensionToMenus < ActiveRecord::Migration[6.0]
  def change
    add_column :menus, :extension, :string
  end
end
