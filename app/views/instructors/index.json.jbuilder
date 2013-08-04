json.array!(@instructors) do |instructor|
  json.extract! instructor, :name, :style, :biography
  json.url instructor_url(instructor, format: :json)
end
