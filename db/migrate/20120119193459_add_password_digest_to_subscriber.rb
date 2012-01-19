class AddPasswordDigestToSubscriber < ActiveRecord::Migration
  def change
    add_column :subscribers, :password_digest, :string
  end
end
