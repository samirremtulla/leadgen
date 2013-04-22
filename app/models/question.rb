class Question < ActiveRecord::Base
  attr_accessible :description, :email, :name, :phone, :response
  has_many :payments
  has_many :users, :through => :payments
end
