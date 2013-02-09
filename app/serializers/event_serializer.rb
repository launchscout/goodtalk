class EventSerializer < ActiveModel::Serializer
  attributes :id, :name, :lonlat, :date
  has_many :sessions
end
