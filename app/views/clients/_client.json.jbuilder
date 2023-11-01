json.extract! client, :id, :nom, :adresse, :telephone, :created_at, :updated_at
json.url client_url(client, format: :json)
