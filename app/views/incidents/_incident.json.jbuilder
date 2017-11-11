json.extract! incident, :id, :category, :street_address_1, :street_address_2, :city, :state, :zip, :occurred_on, :, :latitude, :longitude, :created_at, :updated_at
json.url incident_url(incident, format: :json)
