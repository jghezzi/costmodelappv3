class AddAllocationMasterIdToInvoices < ActiveRecord::Migration
  def change
    add_column :invoices, :allocation_master_id, :integer
  end
end
