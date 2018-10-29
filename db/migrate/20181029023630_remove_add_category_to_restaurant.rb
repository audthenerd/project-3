class RemoveAddCategoryToRestaurant < ActiveRecord::Migration[5.2]
  def change
    remove_column :restaurants, :catogery
    add_column :restaurants, :category, :text
  end
end
