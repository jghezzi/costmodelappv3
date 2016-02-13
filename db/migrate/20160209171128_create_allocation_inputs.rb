class CreateAllocationInputs < ActiveRecord::Migration
  def change
    create_table :allocation_inputs do |t|
      t.date :input_date
      t.string :product_name
      t.float :units
      t.string :allocation_basis
      t.integer :date_dim_id
      t.integer :product_id

      t.timestamps null: false
    end
  end
end
