class Evaluation < ActiveRecord::Base
  has_one :criteria
  belongs_to :session
  attr_accessible :email, :location
end
