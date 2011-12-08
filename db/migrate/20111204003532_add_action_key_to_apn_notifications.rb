class AddActionKeyToApnNotifications < ActiveRecord::Migration
  def self.up
    add_column :apn_notifications, :action_key, :string
  end

  def self.down
    remove_column :apn_notifications, :action_key
  end
end