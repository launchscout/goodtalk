class Speaker < ActiveRecord::Base
  attr_accessible :email, :name
  has_many :sessions
end
