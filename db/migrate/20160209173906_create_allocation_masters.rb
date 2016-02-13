class CreateAllocationMasters < ActiveRecord::Migration
  def change
    create_table :allocation_masters do |t|
      t.string :allocation_name
      t.integer :allocation_input_id

      t.timestamps null: false
    end
  end
end
