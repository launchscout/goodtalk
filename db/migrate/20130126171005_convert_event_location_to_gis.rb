class ConvertEventLocationToGis < ActiveRecord::Migration
  def up
    change_table :events do |t|
      t.remove :location
      t.point :latlon, :geographic => true
    end
  end

  def down
    add_column :events, :location, :string
    remove_column :events, :latlon
  end
end
