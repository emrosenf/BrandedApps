class CreateAppLinkLogs < ActiveRecord::Migration
  def change
    create_table :app_link_logs do |t|
      t.references :app_instance
      t.string :uid
      t.timestamp :time_installed

      t.timestamps
    end
    add_index :app_link_logs, :app_instance_id
  end
end
