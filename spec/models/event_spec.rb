require 'spec_helper'

describe Event do
  Given (:factory) { RGeo::Geographic.spherical_factory(:srid => 4326) }
  Given (:gaslight_loc) { factory.point(-84.373097, 39.266746) }
  Given! (:gaslight) { Event.create(name: "Gaslight", 
                                lonlat: gaslight_loc) }
  describe "self.nearby" do
    context "exact match" do
      When (:nearby_events) { Event.nearby(-84.373097, 39.266746) }
      Then { nearby_events[0].should == gaslight }
    end
    context "less than half a mile to ctoba" do
      When (:nearby_events) { Event.nearby(-84.373843, 39.263994) }
      Then { nearby_events[0].should == gaslight }
    end
    context "more than half a mile to city bbq" do
      When (:nearby_events) { Event.nearby(-84.375221, 39.250011) }
      Then { nearby_events.length.should == 0 }
    end
    
  end
  
end

