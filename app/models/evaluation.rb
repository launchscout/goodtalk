class Evaluation < ActiveRecord::Base
  has_one :criteria
  attr_accessible :email, :location
end
