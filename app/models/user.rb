class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessible :title, :body, :email, :password, :password_confirmation, :remember_me, :name, :id

  has_and_belongs_to_many :sales
end
