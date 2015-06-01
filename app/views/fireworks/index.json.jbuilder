json.array!(@fireworks) do |firework|
  json.extract! firework, :id, :firework_name, :style, :description
  json.url firework_url(firework, format: :json)
end
