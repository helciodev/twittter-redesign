json.extract! user, :id, :name, :profile_photo, :cover_photo, :created_at, :updated_at
json.url user_url(user, format: :json)
