class Sale < ActiveRecord::Base
  attr_accessible :amount, :contact, :description, :email, :price, :title, :user
end
