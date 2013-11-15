class DropUsersSales < ActiveRecord::Migration
  def up
  	drop_table :users_sales
  end

  def down
  end
end
