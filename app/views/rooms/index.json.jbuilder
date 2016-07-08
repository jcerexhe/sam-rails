json.array!(@rooms) do |room|
  json.extract! room, :id, :lodging_id, :user_id, :number
  json.url room_url(room, format: :json)
end
