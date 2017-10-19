json.extract! token, :id, :user_id, :points, :created_at, :updated_at
json.url token_url(token, format: :json)
