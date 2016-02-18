class DateDim < ActiveRecord::Base

	has_many :products
	has_many :allocation_inputs
	has_many :allocations
	has_many :invoices

end
