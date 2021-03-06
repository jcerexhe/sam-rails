json.array!(@maintenance_requests) do |maintenance_request|
  json.extract! maintenance_request, :id, :user, :location, :description, :urgency, :status
  json.url maintenance_request_url(maintenance_request, format: :json)
end
