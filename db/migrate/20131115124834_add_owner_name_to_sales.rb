class AddOwnerNameToSales < ActiveRecord::Migration
  def change
    add_column :sales, :owner_name, :string
  end
end
