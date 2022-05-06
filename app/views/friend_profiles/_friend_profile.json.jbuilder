json.extract! friend_profile, :id, :first_name, :last_name, :email, :contact, :image, :created_at, :updated_at
json.url friend_profile_url(friend_profile, format: :json)
