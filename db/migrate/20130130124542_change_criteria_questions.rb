class ChangeCriteriaQuestions < ActiveRecord::Migration
  def up
    change_table :criteria do |t|
      t.remove :engaging
      t.remove :helpful
      t.remove :comments

      t.integer :style_and_delivery
      t.integer :speaker_expertise
      t.integer :slides_and_demo
      t.integer :met_expectations
      t.string :like_best
      t.string :like_least
    end
  end

  def down
    change_table :criteria do |t|
      t.remove :style_and_delivery
      t.remove :speaker_expertise
      t.remove :slides_and_demo
      t.remove :met_expectations
      t.remove :like_best
      t.remove :like_least

      t.integer :engaging
      t.integer :helpful
      t.string :comments
    end
  end
end
