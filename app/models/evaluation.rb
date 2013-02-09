class Evaluation < ActiveRecord::Base
  set_rgeo_factory_for_column(:lonlat, RGeo::Geographic.spherical_factory(:srid => 4326))
  has_one :criteria
  belongs_to :session
  attr_accessible :email, :lonlat, :criteria, :session_id, :criteria_attributes
  accepts_nested_attributes_for :criteria
end
