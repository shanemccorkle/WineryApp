json.array!(@wineries) do |winery|
  json.extract! winery, :id, :name, :location, :description
  json.url winery_url(winery, format: :json)
end
