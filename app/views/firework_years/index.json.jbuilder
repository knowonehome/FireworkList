json.array!(@firework_years) do |firework_year|
  json.extract! firework_year, :id, :year
  json.url firework_year_url(firework_year, format: :json)
end
