json.array!(@addresses) do |address|
  json.extract! address, :id, :street_number, :postal_code, :street, :city, :country, :area, :other_information, :building, :company, :company_name
  json.url address_url(address, format: :json)
end
