class CreateCriteria < ActiveRecord::Migration
  def change
    create_table :criteria do |t|
      t.integer :helpful
      t.integer :engaging
      t.string :comments

      t.timestamps
    end
  end
end
