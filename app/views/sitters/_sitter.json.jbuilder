json.extract! sitter, :id, :latitude, :longitude, :address, :description, :name, :created_at, :updated_at
json.url sitter_url(sitter, format: :json)