json.extract! question, :id, :title, :img_url, :description, :points, :user_id, :created_at, :updated_at
json.url question_url(question, format: :json)
