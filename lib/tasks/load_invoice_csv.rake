require 'csv'

desc "load invoices csv"
task :load_invoice_csv do

	puts "starting"

  CSV.foreach('invoice_load.csv', :headers => true) do |row|
  	Invoice.create!(row.to_hash)
  	puts "row loaded"
  end

end