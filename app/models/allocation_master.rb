class AllocationMaster < ActiveRecord::Base

	has_many :allocations
	has_many :invoices

end
