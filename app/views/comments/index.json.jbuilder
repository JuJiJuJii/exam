json.array!(@comments) do |comment|
  json.extract! comment, :micropost_id, :content
  json.url comment_url(comment, format: :json)
end