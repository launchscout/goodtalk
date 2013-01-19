class AddEventToSession < ActiveRecord::Migration
  def change
    add_column :sessions, :event_id, :integer
    add_index :sessions, :event_id
  end
end
