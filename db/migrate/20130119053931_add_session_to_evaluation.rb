class AddSessionToEvaluation < ActiveRecord::Migration
  def change
    add_column :evaluations, :session_id, :integer
    add_index :evaluations, :session_id
  end
end
