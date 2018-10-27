class OrdersMenuItems < ActiveRecord::Migration[5.2]
  def change
    create_table :orders_menu_items, id: false do |t|
      t.references :order
      t.references :menu_item

      t.timestamps
    end
  end
end
