json.array!(@contacts) do |contact|
  json.extract! contact, :id, :guardian, :father, :mother, :email, :address, :phone, :private_number, :county, :country
  json.url contact_url(contact, format: :json)
end
