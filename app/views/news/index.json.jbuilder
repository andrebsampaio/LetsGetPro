json.array!(@news) do |news|
  json.extract! news, :title, :content, :date, :author
  json.url news_url(news, format: :json)
end
