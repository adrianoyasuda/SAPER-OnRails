json.extract! user, :id, :name, :email, :register_id, :description, :password, :type, :points, :created_at, :updated_at
json.url user_url(user, format: :json)
