json.array!(@operations) do |operation|
  json.extract! operation, :id, :name, :value
  json.url operation_url(operation, format: :json)
end
