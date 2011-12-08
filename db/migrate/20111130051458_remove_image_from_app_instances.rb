class RemoveImageFromAppInstances < ActiveRecord::Migration
  def up
   remove_column :app_instances, :image
  end

  def down
    add_column :app_instances, :image, :string
  end
end
