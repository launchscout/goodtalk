class EvaluationSerializer < ActiveModel::Serializer
  attributes :id, :email, :lonlat
  has_one :criteria
end
