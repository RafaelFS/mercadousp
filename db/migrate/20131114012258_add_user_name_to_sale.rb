class AddUserNameToSale < ActiveRecord::Migration
  def change
    add_column :sales, :user_name, :string
  end
end
