json.array!(@user_datasheets) do |user_datasheet|
  json.extract! user_datasheet, :id, :phone, :mobile, :title, :birthdate, :firstname, :lastname, :nickname
  json.url user_datasheet_url(user_datasheet, format: :json)
end
