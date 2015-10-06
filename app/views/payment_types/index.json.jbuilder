json.array!(@payment_types) do |payment_type|
  json.extract! payment_type, :id, :type, :transaction_id, :specify_other
  json.url payment_type_url(payment_type, format: :json)
end
