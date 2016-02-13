class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.date :date_active
      t.string :date_inactive_date
      t.integer :date_dim_id

      t.timestamps null: false
    end
  end
end
