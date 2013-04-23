class Question < ActiveRecord::Base
  attr_accessible :description, :email, :name, :phone, :response, :latitude, :longitude, :ip_address
  has_many :payments
  has_many :users, :through => :payments
  geocoded_by :ip_address
  after_validation :geocode
end


