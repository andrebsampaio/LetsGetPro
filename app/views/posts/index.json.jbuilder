json.array!(@post) do |post|
  json.extract! post, :title, :content, :shares, :user_id
  json.url post_url(post, format: :json)
end
