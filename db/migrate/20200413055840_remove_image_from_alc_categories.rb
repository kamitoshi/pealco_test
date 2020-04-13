class RemoveImageFromAlcCategories < ActiveRecord::Migration[5.2]
  def change
    remove_column :alc_categories, :image, :string
  end
end
