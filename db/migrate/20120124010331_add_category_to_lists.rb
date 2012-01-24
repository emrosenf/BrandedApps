class AddCategoryToLists < ActiveRecord::Migration
  def change
    add_column :lists, :category_id, :integer
  end
end
