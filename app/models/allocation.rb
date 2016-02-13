class Allocation < ActiveRecord::Base

	belongs_to :product
	has_one :allocation_input
	belongs_to :date_dim
	has_one :allocation_master

	after_save :generate_allocation_base

	def generate_allocation_base

		sql = "SELECT date_dim_id, allocation_name, sum(allocation_units) as allocation_base from allocations group by date_dim_id, allocation_name"

		a = Allocation.connection.execute(sql)

		a.each do |key|
			key.each do |k,v|
				puts "#{k} --> #{v}"
				puts "***"
			end
		end
	end


end
