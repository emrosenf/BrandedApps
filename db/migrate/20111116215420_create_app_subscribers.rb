class CreateAppSubscribers < ActiveRecord::Migration
  def change
    create_table :app_subscribers do |t|
      t.references :subscriber
      t.references :app

      t.timestamps
    end
    add_index :app_subscribers, :subscriber_id
    add_index :app_subscribers, :app_id
  end
end
