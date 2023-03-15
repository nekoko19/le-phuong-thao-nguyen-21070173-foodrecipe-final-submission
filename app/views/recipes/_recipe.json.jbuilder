json.extract! recipe, :id, :recipe_id, :title, :publication_date, :price, :description, :caloriesperserving, :category, :review, :instruction, :created_at, :updated_at
json.url recipe_url(recipe, format: :json)
