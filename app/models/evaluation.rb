class Evaluation < ActiveRecord::Base
  has_one :criteria
  belongs_to :session
  attr_accessible :email, :location, :criteria
  accepts_nested_attributes_for :criteria
end
