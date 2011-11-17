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

ActiveRecord::Schema.define(:version => 20111117031340) do

  create_table "app_subscribers", :force => true do |t|
    t.integer  "subscriber_id"
    t.integer  "app_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "app_subscribers", ["app_id"], :name => "index_app_subscribers_on_app_id"
  add_index "app_subscribers", ["subscriber_id"], :name => "index_app_subscribers_on_subscriber_id"

  create_table "app_templates", :force => true do |t|
    t.text     "params"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "apps", :force => true do |t|
    t.integer  "user_id"
    t.integer  "app_template_id"
    t.text     "params"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "apps", ["app_template_id"], :name => "index_apps_on_app_template_id"
  add_index "apps", ["user_id"], :name => "index_apps_on_user_id"

  create_table "subscribers", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "udid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
