json.array!(@boxes) do |box|
  json.extract! box, :id, :content
  json.url box_url(box, format: :json)
end
