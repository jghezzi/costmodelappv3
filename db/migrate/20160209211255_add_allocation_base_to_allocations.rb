class AddAllocationBaseToAllocations < ActiveRecord::Migration
  def change
    add_column :allocations, :allocation_base, :float
  end
end
