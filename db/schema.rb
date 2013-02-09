# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130130124542) do

  create_table "criteria", :force => true do |t|
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.integer  "evaluation_id"
    t.integer  "style_and_delivery"
    t.integer  "speaker_expertise"
    t.integer  "slides_and_demo"
    t.integer  "met_expectations"
    t.string   "like_best"
    t.string   "like_least"
  end

  add_index "criteria", ["evaluation_id"], :name => "index_criteria_on_evaluation_id"

  create_table "evaluations", :force => true do |t|
    t.string   "email"
    t.datetime "created_at",                                                             :null => false
    t.datetime "updated_at",                                                             :null => false
    t.integer  "session_id"
    t.spatial  "lonlat",     :limit => {:srid=>4326, :type=>"point", :geographic=>true}
  end

  add_index "evaluations", ["session_id"], :name => "index_evaluations_on_session_id"

  create_table "events", :force => true do |t|
    t.string   "name"
    t.datetime "date"
    t.datetime "created_at",                                                             :null => false
    t.datetime "updated_at",                                                             :null => false
    t.spatial  "lonlat",     :limit => {:srid=>4326, :type=>"point", :geographic=>true}
  end

  create_table "sessions", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "speaker_id"
    t.integer  "event_id"
  end

  add_index "sessions", ["event_id"], :name => "index_sessions_on_event_id"
  add_index "sessions", ["speaker_id"], :name => "index_sessions_on_speaker_id"

  create_table "speakers", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
