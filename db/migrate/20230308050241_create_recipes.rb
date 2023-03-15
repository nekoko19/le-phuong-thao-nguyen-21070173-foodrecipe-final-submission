class CreateRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :recipes do |t|
      t.integer :recipe_id
      t.string :title
      t.date :publication_date
      t.float :price
      t.string :description
      t.integer :caloriesperserving
      t.string :category
      t.string :review
      t.text :instruction

      t.timestamps
    end
  end
end
