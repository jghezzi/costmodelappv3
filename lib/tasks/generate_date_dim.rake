desc "generate base date_dim data"
task :generate_date_dim do

	date_index = Date.parse("2015-01-01")
	today = Date.today + 2.years

	while date_index < today do
		d = DateDim.new(:input_date => date_index, :beginning_period => date_index.beginning_of_month, :ending_period => date_index.end_of_month)
		d.save
		date_index += 1
		puts date_index
	end
end