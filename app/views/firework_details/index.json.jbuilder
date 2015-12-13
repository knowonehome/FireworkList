json.array!(@firework_details) do |firework_detail|
  json.extract! firework_detail, :id, :cost, :purchased, :firework_id
  json.url firework_detail_url(firework_detail, format: :json)
end
