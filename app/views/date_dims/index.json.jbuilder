json.array!(@date_dims) do |date_dim|
  json.extract! date_dim, :id, :input_date, :beginning_period, :ending_period
  json.url date_dim_url(date_dim, format: :json)
end
