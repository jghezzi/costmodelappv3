class Product < ActiveRecord::Base

	belongs_to :date_dim
	has_many :allocation_inputs
	has_many :allocations

	after_save :assign_date_dim_id

	def assign_date_dim_id
		d = DateDim.where("input_date = ?", self.action_date).first
		self.update_columns(:date_dim_id => d.id)
	end


end
