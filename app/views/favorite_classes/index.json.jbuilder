json.array!(@favorite_classes) do |favorite_class|
  json.extract! favorite_class, :dance_class_id, :user_id
  json.url favorite_class_url(favorite_class, format: :json)
end
