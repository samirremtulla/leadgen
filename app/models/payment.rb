class Payment < ActiveRecord::Base
  belongs_to :question
  belongs_to :user
  attr_accessible :payment, :question_id
end
