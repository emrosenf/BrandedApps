class AddAccessTokenToSubscribers < ActiveRecord::Migration
  def change
    add_column :subscribers, :access_token, :string
    add_index :subscribers, :access_token
  end
end
