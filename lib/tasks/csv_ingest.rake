require 'csv'

namespace :ephemera do 

	task :csv_ingest => :environment do
		CSV.foreach("#{Rails.root}/data/ingest/mcny_ephemera_object.csv", headers: true) do |row|

			Ephemera.create(row.to_hash)
				
			
		end
	
	end
end
