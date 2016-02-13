class CreateDateDims < ActiveRecord::Migration
  def change
    create_table :date_dims do |t|
      t.date :input_date
      t.date :beginning_period
      t.date :ending_period

      t.timestamps null: false
    end
  end
end
