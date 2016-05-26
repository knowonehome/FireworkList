json.array!(@firework_comments) do |firework_comment|
  json.extract! firework_comment, :id, :comment
  json.url firework_comment_url(firework_comment, format: :json)
end
