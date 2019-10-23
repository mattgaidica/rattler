json.extract! sighting, :id, :squirrel_id, :location_id, :project_id, :created_at, :updated_at
json.url sighting_url(sighting, format: :json)
