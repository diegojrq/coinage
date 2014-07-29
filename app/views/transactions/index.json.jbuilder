json.array!(@transactions) do |transaction|
  json.extract! transaction, :id, :name, :value
  json.url transaction_url(transaction, format: :json)
end
