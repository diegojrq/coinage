json.array!(@currencies) do |currency|
  json.extract! currency, :id, :country, :name, :code, :symbol
  json.url currency_url(currency, format: :json)
end
