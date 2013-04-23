class Question < ActiveRecord::Base
  attr_accessible :description, :email, :name, :phone, :response, :latitude, :longitude, :ip_address, :tag_list
  has_many :payments
  has_many :users, :through => :payments
  geocoded_by :ip_address
  after_validation :geocode
  acts_as_taggable
end


