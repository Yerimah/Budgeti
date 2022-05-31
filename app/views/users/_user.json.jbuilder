json.extract! user, :id, :firstname, :surname, :created_at, :updated_at
json.url user_url(user, format: :json)
