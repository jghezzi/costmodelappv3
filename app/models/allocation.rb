class Allocation < ActiveRecord::Base

	belongs_to :product
	has_one :allocation_input
	belongs_to :date_dim
	has_one :allocation_master

	scope :base_generated, -> { where(status: "base_generated")}

end
