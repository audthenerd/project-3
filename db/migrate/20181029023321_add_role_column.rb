class AddRoleColumn < ActiveRecord::Migration[5.2]
  def change
    add_column :userrests, :role, :string, :default => 'userrest'
    add_column :usercusts, :role, :string, :default => 'usercust'
  end
end
