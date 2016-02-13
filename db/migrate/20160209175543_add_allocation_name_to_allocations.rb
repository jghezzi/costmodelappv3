class AddAllocationNameToAllocations < ActiveRecord::Migration
  def change
    add_column :allocations, :allocation_name, :string
  end
end
