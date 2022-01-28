json.extract! user, :id, :username, :email, :admin, :active, :validated, :user_data, :deactivated_at, :created_at, :updated_at
json.url user_url(user, format: :json)
