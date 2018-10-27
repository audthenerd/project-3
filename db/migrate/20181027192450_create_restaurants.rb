class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.text :catogery
      t.text :location

      t.timestamps
    end
  end
end
