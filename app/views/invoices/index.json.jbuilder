json.array!(@invoices) do |invoice|
  json.extract! invoice, :id, :period, :gl_date, :vendor_name, :account_code, :location_code, :department_code, :company_code, :net_amount, :allocation_id, :date_dim_id
  json.url invoice_url(invoice, format: :json)
end
