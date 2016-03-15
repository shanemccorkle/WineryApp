json.array!(@wines) do |wine|
  json.extract! wine, :id, :name, :year, :winery_id
  json.url wine_url(wine, format: :json)
end
