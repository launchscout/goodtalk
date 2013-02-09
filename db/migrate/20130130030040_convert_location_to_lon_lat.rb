class ConvertLocationToLonLat < ActiveRecord::Migration
  def up
    rename_column :events, :latlon, :lonlat
    rename_column :evaluations, :latlon, :lonlat
  end

  def down
    rename_column :events, :lonlat, :latlon
    rename_column :evaluations, :lonlat, :latlon
  end
end
