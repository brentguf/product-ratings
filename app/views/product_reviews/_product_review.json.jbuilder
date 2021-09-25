json.extract! product_review, :id, :rating, :description, :product_id, :created_at, :updated_at
json.url product_review_url(product_review, format: :json)
