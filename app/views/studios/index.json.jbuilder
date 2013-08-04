json.array!(@studios) do |studio|
  json.extract! studio, :name, :address, :phone
  json.url studio_url(studio, format: :json)
end
