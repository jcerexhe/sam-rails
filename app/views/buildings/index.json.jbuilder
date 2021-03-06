json.array!(@buildings) do |building|
  json.extract! building, :id, :name, :street, :city, :postcode, :state, :country
  json.url building_url(building, format: :json)
end
