json.array!(@allocation_inputs) do |allocation_input|
  json.extract! allocation_input, :id, :input_date, :product_name, :units, :allocation_basis, :date_dim_id, :product_id
  json.url allocation_input_url(allocation_input, format: :json)
end
