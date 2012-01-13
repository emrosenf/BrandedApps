class RenamePathToCode < ActiveRecord::Migration
  def change
    rename_column :app_instances, :path, :code
    add_index :app_instances, :code	
  end
end
