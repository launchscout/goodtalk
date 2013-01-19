class CreateEvaluations < ActiveRecord::Migration
  def change
    create_table :evaluations do |t|
      t.string :location
      t.string :email

      t.timestamps
    end
  end
end
