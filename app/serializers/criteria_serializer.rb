class CriteriaSerializer < ActiveModel::Serializer
  attributes :id, :created_at, :evaluation_id, 
    :style_and_delivery, :speaker_expertise, 
    :slides_and_demo, :met_expectations, :like_best, :like_least
end
