class AddPriceToMenuItems < ActiveRecord::Migration[5.2]
  def change
    add_column :menu_items, :price, :decimal
  end
end
