class CreateSubscriberInfos < ActiveRecord::Migration
  def change
    create_table :subscriber_infos do |t|
      t.references :subscriber
      t.string :email
      t.string :phone
      t.integer :platform
      t.string :token

      t.timestamps
    end
    add_index :subscriber_infos, :subscriber_id
  end
end
