json.extract! review, :id, :rating, :comment, :date, :created_at, :updated_at
json.url review_url(review, format: :json)
