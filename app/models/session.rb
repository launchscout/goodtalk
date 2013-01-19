class Session < ActiveRecord::Base
  attr_accessible :name
  has_many :evaluations
  belongs_to :speaker
end
