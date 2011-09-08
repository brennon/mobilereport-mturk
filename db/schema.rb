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

ActiveRecord::Schema.define(:version => 20110904150710) do

  create_table "recordings", :force => true do |t|
    t.string   "gender"
    t.string   "locale"
    t.string   "soundfile_file_name"
    t.string   "soundfile_content_type"
    t.datetime "soundfile_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "script_id"
  end

  create_table "scripts", :force => true do |t|
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
