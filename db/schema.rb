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

ActiveRecord::Schema.define(:version => 20111209003532) do


  create_table "apn_device_groupings", :force => true do |t|
    t.integer "group_id"
    t.integer "device_id"
  end
 
  add_index "apn_device_groupings", ["device_id"], :name => "index_apn_device_groupings_on_device_id"
  add_index "apn_device_groupings", ["group_id", "device_id"], :name => "index_apn_device_groupings_on_group_id_and_device_id"
  add_index "apn_device_groupings", ["group_id"], :name => "index_apn_device_groupings_on_group_id"
 
  create_table "apn_devices", :force => true do |t|
    t.string   "token",              :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "app_id"
    t.datetime "last_registered_at"
  end
 
  add_index "apn_devices", ["token"], :name => "index_apn_devices_on_token"
 
  create_table "apn_group_notifications", :force => true do |t|
    t.integer  "group_id",          :null => false
    t.string   "device_language"
    t.string   "sound"
    t.string   "alert"
    t.integer  "badge"
    t.text     "custom_properties"
    t.datetime "sent_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end
 
  add_index "apn_group_notifications", ["group_id"], :name => "index_apn_group_notifications_on_group_id"
 
  create_table "apn_notifications", :force => true do |t|
    t.integer  "device_id",                        :null => false
    t.integer  "errors_nb",         :default => 0
    t.string   "device_language"
    t.string   "sound"
    t.string   "alert"
    t.integer  "badge"
    t.datetime "sent_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "custom_properties"
    t.string   "action_key"
  end
 
  add_index "apn_notifications", ["device_id"], :name => "index_apn_notifications_on_device_id"
 
 
  create_table "notification_lists", :force => true do |t|
    t.string   "name"
    t.integer  "app_instance_id"
    t.integer  "subscriber_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end
 
 
  create_table "list_subscribers", :force => true do |t|
    t.integer  "subscriber_id"
    t.integer  "notification_list_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end
   
  add_index "app_instance_subscribers", ["app_instance_id"], :name => "index_app_subscribers_on_app_id"
  add_index "app_instance_subscribers", ["subscriber_id"], :name => "index_app_subscribers_on_subscriber_id"
 
  create_table "app_instances", :force => true do |t|
    t.integer  "app_id"
    t.integer  "user_id"
    t.text     "params"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "banner_file_name"
    t.string   "banner_content_type"
    t.integer  "banner_file_size"
    t.datetime "banner_updated_at"
    t.string   "path"
  end
 
  add_index "app_instances", ["app_id"], :name => "index_app_instances_on_app_id"
  add_index "app_instances", ["user_id"], :name => "index_app_instances_on_user_id"
 
  create_table "app_link_logs", :force => true do |t|
    t.integer  "app_instance_id"
    t.string   "uid"
    t.datetime "installed_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end
 
  add_index "app_link_logs", ["app_instance_id"], :name => "index_app_link_logs_on_app_instance_id"

  create_table "apps", :force => true do |t|
    t.integer  "user_id"
    t.string   "name"
    t.string   "description"
    t.text     "params"
    t.integer  "platform"
    t.text     "apn_dev_cert"
    t.text     "apn_prod_cert"
    t.string   "google_auth_token"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "canvas_file_name"
    t.string   "canvas_content_type"
    t.integer  "canvas_file_size"
    t.datetime "canvas_updated_at"
  end

  add_index "apps", ["user_id"], :name => "index_apps_on_user_id"

  create_table "subscribers", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "phone"
    t.integer  "platform"
    t.string   "udid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                          :null => false
    t.integer  "role",            :default => 0
    t.string   "password_digest",                :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "status"
  end

end
