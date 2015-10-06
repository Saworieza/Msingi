json.array!(@houses) do |house|
  json.extract! house, :id, :name, :color, :description
  json.url house_url(house, format: :json)
end
