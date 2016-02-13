json.array!(@allocation_masters) do |allocation_master|
  json.extract! allocation_master, :id, :allocation_name, :allocation_input_id
  json.url allocation_master_url(allocation_master, format: :json)
end
