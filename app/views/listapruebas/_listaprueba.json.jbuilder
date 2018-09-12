json.extract! listaprueba, :id, :nombre, :desde, :hasta, :responsable, :estado, :created_at, :updated_at
json.url listaprueba_url(listaprueba, format: :json)
