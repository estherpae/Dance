json.array!(@exercises) do |exercise|
  json.extract! exercise, :user_id, :picture_url, :description
  json.url exercise_url(exercise, format: :json)
end
