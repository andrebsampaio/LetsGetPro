json.array!(@users) do |user|
  json.extract! user, :name, :email, :password_digest, :password, :password_confirmation
  json.url user_url(user, format: :json)
end
