json.array!(@payments) do |payment|
  json.extract! payment, :id, :amount, :payment_date, :paid_by
  json.url payment_url(payment, format: :json)
end
