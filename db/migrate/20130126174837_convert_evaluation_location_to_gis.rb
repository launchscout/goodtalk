class ConvertEvaluationLocationToGis < ActiveRecord::Migration
  def up
    change_table :evaluations do |t|
      t.remove :location
      t.point :latlon, :geographic => true
    end
  end

  def down
    add_column :evaluations, :location, :string
    remove_column :evaluations, :latlon
  end
end
