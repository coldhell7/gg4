json.array!(@gusers) do |guser|
  json.extract! guser, :id, :email, :password
  json.url guser_url(guser, format: :json)
end
