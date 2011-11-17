class CreateAppTemplates < ActiveRecord::Migration
  def change
    create_table :app_templates do |t|
      t.text :params

      t.timestamps
    end
  end
end
