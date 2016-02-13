json.array!(@allocations) do |allocation|
  json.extract! allocation, :id, :allocation_master_id, :product_id, :allocation_input_id, :date_dim_id, :allocation_factor, :allocation_date
  json.url allocation_url(allocation, format: :json)
end
