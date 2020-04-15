class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :menu_name
      t.text :content
      t.string :image
      t.references :user, foreign_key: true
      t.references :alc_category
      t.references :menu_category

      t.timestamps

    end
  end
end
