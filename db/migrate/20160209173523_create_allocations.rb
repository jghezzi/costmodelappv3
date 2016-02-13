class CreateAllocations < ActiveRecord::Migration
  def change
    create_table :allocations do |t|
      t.integer :allocation_master_id
      t.integer :product_id
      t.string :allocation_input_id
      t.integer :date_dim_id
      t.decimal :allocation_factor
      t.date :allocation_date

      t.timestamps null: false
    end
  end
end
