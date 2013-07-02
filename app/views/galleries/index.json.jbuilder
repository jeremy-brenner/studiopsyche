json.array!(@galleries) do |gallery|
  json.extract! gallery, :name, :description
  json.url gallery_url(gallery, format: :json)
end
