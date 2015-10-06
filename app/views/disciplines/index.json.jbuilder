json.array!(@disciplines) do |discipline|
  json.extract! discipline, :id, :name, :reported_date, :details
  json.url discipline_url(discipline, format: :json)
end
