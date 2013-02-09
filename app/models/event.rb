class Event < ActiveRecord::Base
  set_rgeo_factory_for_column(:lonlat, RGeo::Geographic.spherical_factory(:srid => 4326))
  attr_accessible :date, :lonlat, :name
  has_many :sessions

  def self.nearby(lat, lon)
    loc_factory = RGeo::Geographic.spherical_factory(:srid => 4326)
    user_location = loc_factory.point(lat, lon)
    Event.where("ST_Distance(lonlat, 'POINT(#{lon} #{lat})') < 1000")
  end
end
