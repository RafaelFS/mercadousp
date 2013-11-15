class RemoveUserIdFromSales < ActiveRecord::Migration
  def up
    remove_column :sales, :user_id
  end

  def down
    add_column :sales, :user_id, :integer
  end
end
