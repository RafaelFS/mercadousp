class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.string :title
      t.text :description
      t.decimal :price
      t.integer :amount
      t.string :user
      t.string :email
      t.string :contact

      t.timestamps
    end
  end
end
