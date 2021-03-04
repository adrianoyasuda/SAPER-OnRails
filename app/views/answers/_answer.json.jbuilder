json.extract! answer, :id, :description, :points, :question_id, :user_id, :status, :created_at, :updated_at
json.url answer_url(answer, format: :json)
