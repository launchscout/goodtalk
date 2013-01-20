class SessionSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_one :speaker
end
