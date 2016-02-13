require 'csv'

desc "load allocation inputs csv"
task :load_allocation_inputs_csv do

	puts "starting"		

  CSV.foreach('allocation_drivers.csv', :headers => true) do |row|
  	AllocationInput.create!(row.to_hash)
  	puts "row loaded"
  end

end