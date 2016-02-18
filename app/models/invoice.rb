class Invoice < ActiveRecord::Base

	belongs_to :date_dim
	belongs_to :allocation_master

	after_save :assign_period, :assign_date_dim_id


	def assign_period
		self.update_columns(:period => self.gl_date.beginning_of_month)
	end

	def assign_date_dim_id
		d = DateDim.where("input_date = ?", self.period).first
		self.update_columns(:date_dim_id => d.id)
	end

end
