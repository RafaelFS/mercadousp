class CreateSalesUsers < ActiveRecord::Migration
  def up
 	create_table :sales_users, :id => false do |t|
  		t.references :sale, :user
  	end
	add_index :sales_users, [:sale_id, :user_id]
  end

  def down
  end
end
