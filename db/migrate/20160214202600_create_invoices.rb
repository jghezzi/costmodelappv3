class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.date :period
      t.date :gl_date
      t.string :vendor_name
      t.string :account_code
      t.string :location_code
      t.string :department_code
      t.string :company_code
      t.float :net_amount
      t.integer :allocation_id
      t.integer :date_dim_id

      t.timestamps null: false
    end
  end
end
