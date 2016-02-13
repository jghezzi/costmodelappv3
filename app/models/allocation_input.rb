class AllocationInput < ActiveRecord::Base

	belongs_to :date_dim
	belongs_to :product
	has_many :allocations

	after_save :assign_product_id, :assign_period, :assign_date_dim_id

	def assign_product_id
		p = Product.where("name = ?", self.product_name).first
		self.update_columns(:product_id => p.id)
	end

	def assign_period
		self.update_columns(:period => self.input_date.beginning_of_month)
	end

	def assign_date_dim_id
		d = DateDim.where("input_date = ?", self.period).first
		self.update_columns(:date_dim_id => d.id)
	end


end
