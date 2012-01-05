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

ActiveRecord::Schema.define(:version => 20120105010714) do

  create_table "general_reports", :force => true do |t|
    t.integer  "report_id"
    t.string   "name"
    t.string   "designation"
    t.text     "motivation"
    t.integer  "created_user_id"
    t.integer  "updated_user_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "historical_reports", :force => true do |t|
    t.integer  "report_id"
    t.text     "history"
    t.text     "source"
    t.integer  "updated_user_id"
    t.integer  "created_user_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "location_reports", :force => true do |t|
    t.integer  "report_id"
    t.integer  "updated_user_id"
    t.integer  "created_user_id"
    t.string   "address"
    t.string   "street"
    t.string   "district"
    t.string   "state"
    t.string   "city"
    t.string   "country"
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "owner_reports", :force => true do |t|
    t.integer  "report_id"
    t.string   "owner"
    t.string   "address"
    t.string   "administrative_subordination"
    t.string   "responsible"
    t.boolean  "access_restriction"
    t.string   "service_hours"
    t.integer  "updated_user_id"
    t.integer  "created_user_id"
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

  create_table "report_types", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "reports", :force => true do |t|
    t.integer  "user_id"
    t.integer  "report_type_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "updated_user_id"
    t.integer  "created_user_id"
  end

  create_table "status_reports", :force => true do |t|
    t.integer  "report_id"
    t.integer  "status_id"
    t.integer  "updated_user_id"
    t.integer  "created_user_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "statuses", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "supplementary_data_reports", :force => true do |t|
    t.integer  "report_id"
    t.text     "information"
    t.integer  "updated_user_id"
    t.integer  "created_user_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "technical_card_reports", :force => true do |t|
    t.integer  "report_id"
    t.date     "survey"
    t.date     "elaboration"
    t.string   "survey_user1"
    t.string   "survey_user1_crea"
    t.string   "survey_user2"
    t.string   "survey_user2_crea"
    t.string   "elaboration_user1"
    t.string   "elaboration_user1_crea"
    t.string   "elaboration_user2"
    t.string   "elaboration_user2_crea"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "username",                        :null => false
    t.string   "email"
    t.string   "crypted_password"
    t.string   "salt"
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
    t.string   "remember_me_token"
    t.datetime "remember_me_token_expires_at"
    t.string   "reset_password_token"
    t.datetime "reset_password_token_expires_at"
    t.datetime "reset_password_email_sent_at"
  end

  add_index "users", ["remember_me_token"], :name => "index_users_on_remember_me_token"
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token"

end
