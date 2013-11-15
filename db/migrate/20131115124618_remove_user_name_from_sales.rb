class RemoveUserNameFromSales < ActiveRecord::Migration
  def up
    remove_column :sales, :user_name
  end

  def down
    add_column :sales, :user_name, :string
  end
end
