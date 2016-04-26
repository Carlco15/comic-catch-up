json.array!(@comics) do |comic|
  json.extract! comic, :id, :title
  json.url comic_url(comic, format: :json)
end
