class ModifyProductModel < ActiveRecord::Migration
  def change

  	add_column :products, :action, :string
  	add_column :products, :action_date, :date
  	remove_column :products, :date_active
  	remove_column :products, :date_inactive_date

  end
end
