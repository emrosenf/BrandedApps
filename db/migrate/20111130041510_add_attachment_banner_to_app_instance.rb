class AddAttachmentBannerToAppInstance < ActiveRecord::Migration
  def self.up
    add_column :app_instances, :banner_file_name, :string
    add_column :app_instances, :banner_content_type, :string
    add_column :app_instances, :banner_file_size, :integer
    add_column :app_instances, :banner_updated_at, :datetime
  end

  def self.down
    remove_column :app_instances, :banner_file_name
    remove_column :app_instances, :banner_content_type
    remove_column :app_instances, :banner_file_size
    remove_column :app_instances, :banner_updated_at
  end
end
