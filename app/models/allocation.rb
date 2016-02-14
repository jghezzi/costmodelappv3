class Allocation < ActiveRecord::Base

	belongs_to :product
	has_one :allocation_input
	belongs_to :date_dim
	has_one :allocation_master

end
