class Sale < ActiveRecord::Base
  attr_accessible :amount, :contact, :description, :email, :price, :title, :user_name, :user_id

  belongs_to :user


  def debit(qtde)
  		self.amount = self.amount - qtde
  end
end
