json.array!(@pieces) do |piece|
  json.extract! piece, :name, :description, :gallery_id
  json.url piece_url(piece, format: :json)
end
