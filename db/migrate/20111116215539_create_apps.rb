class CreateApps < ActiveRecord::Migration
  def change
    create_table :apps do |t|
      t.references :user
      t.references :app_template
      t.text :params

      t.timestamps
    end
    add_index :apps, :user_id
    add_index :apps, :app_template_id
  end
end
