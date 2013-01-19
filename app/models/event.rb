class Event < ActiveRecord::Base
  attr_accessible :date, :location, :name
  has_many :sessions
end
