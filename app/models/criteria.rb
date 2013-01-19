class Criteria < ActiveRecord::Base
  belongs_to :evaluation
  attr_accessible :comments, :engaging, :helpful
end
