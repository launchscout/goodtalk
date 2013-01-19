class AddCriteriaToEvaluation < ActiveRecord::Migration
  def change
    add_column :criteria, :evaluation_id, :integer
    add_index :criteria, :evaluation_id
  end

end
