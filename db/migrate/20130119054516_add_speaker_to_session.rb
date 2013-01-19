class AddSpeakerToSession < ActiveRecord::Migration
  def change
    add_column :sessions, :speaker_id, :integer
    add_index :sessions, :speaker_id
  end
end
