json.array!(@users) do |user|
  json.extract! user, :name, :curriculum, :email, :join_date, :crypted_password
  json.url user_url(user, format: :json)
end
