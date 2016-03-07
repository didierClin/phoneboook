json.array!(@lists) do |list|
  json.extract! list, :id, :username, :phone, :subscribe, :gender, :address, :citycode, :city, :user_id
  json.url list_url(list, format: :json)
end
