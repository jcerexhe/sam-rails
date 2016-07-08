json.array!(@lodgings) do |lodging|
  json.extract! lodging, :id, :building_id, :code
  json.url lodging_url(lodging, format: :json)
end
