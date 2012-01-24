class CreateListCategories < ActiveRecord::Migration
  def change
    create_table :list_categories do |t|
      t.string :name

      t.timestamps
    end
  end
end
