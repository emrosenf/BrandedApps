class AddPathToAppInstance < ActiveRecord::Migration
  def change
    add_column :app_instances, :path, :string
  end
end
