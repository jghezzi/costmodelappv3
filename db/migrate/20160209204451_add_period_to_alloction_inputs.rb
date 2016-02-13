class AddPeriodToAlloctionInputs < ActiveRecord::Migration
  def change
    add_column :allocation_inputs, :period, :date
  end
end
