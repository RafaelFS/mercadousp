class Sale < ActiveRecord::Base
  attr_accessible :amount, :contact, :description, :email, :price, :title, :owner_name, :owner_id

  has_and_belongs_to_many :users


  def debit(qtde)
  		self.amount = self.amount - qtde
  end
end
