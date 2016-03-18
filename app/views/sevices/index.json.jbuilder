json.array!(@sevices) do |sevice|
  json.extract! sevice, :id
  json.url sevice_url(sevice, format: :json)
end
