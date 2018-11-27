class AddInventoryAndCategoryToDishes < ActiveRecord::Migration[5.2]
  def change
    add_column :dishes, :inventory, :integer
    add_column :dishes, :category_id, :integer
  end
end
