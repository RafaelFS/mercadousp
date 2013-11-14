class RemoveUserFromSale < ActiveRecord::Migration
  def up
    remove_column :sales, :user
  end

  def down
    add_column :sales, :user, :string
  end
end
