json.array!(@products) do |product|
  json.extract! product, :id, :name, :date_active, :date_inactive_date, :date_dim_id
  json.url product_url(product, format: :json)
end
