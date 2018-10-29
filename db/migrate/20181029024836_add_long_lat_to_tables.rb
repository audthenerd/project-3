class AddLongLatToTables < ActiveRecord::Migration[5.2]
  def change
    add_column :restaurants, :lat, :decimal, {precision: 10, scale: 8}
    add_column :restaurants, :long, :decimal, {precision: 10, scale: 8}
    add_column :customers, :lat, :decimal, {precision: 10, scale: 8}
    add_column :customers, :long, :decimal, {precision: 10, scale: 8}
  end
end
