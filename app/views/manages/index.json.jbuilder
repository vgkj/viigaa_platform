json.array!(@manages) do |manage|
  json.extract! manage, :id, :username, :password-digest, :image, :logintime, :status
  json.url manage_url(manage, format: :json)
end
