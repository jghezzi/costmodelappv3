class AddStatusToAllocations < ActiveRecord::Migration
  def change
    add_column :allocations, :status, :string
  end
end
