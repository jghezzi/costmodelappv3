class AddAllocationUnitsToAllocations < ActiveRecord::Migration
  def change
    add_column :allocations, :allocation_units, :float
  end
end
