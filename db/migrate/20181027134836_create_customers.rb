class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :name
      t.text :location
      t.text :preference

      t.timestamps
    end
  end
end
