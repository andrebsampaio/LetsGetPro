json.array!(@companies) do |company|
  json.extract! company, :name, :location, :join_date, :acronym
  json.url company_url(company, format: :json)
end
