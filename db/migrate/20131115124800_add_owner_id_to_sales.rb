class AddOwnerIdToSales < ActiveRecord::Migration
  def change
    add_column :sales, :owner_id, :integer
  end
end
