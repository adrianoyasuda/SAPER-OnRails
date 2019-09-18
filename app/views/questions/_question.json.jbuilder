json.extract! question, :id, :title, :img_url, :description, :points, :courses, :user_id, :created_at, :updated_at
json.url question_url(question, format: :json)
