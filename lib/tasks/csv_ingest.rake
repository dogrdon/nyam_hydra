require 'csv'

namespace :ephemera do 

	task :csv_ingest => :environment do
		CSV.foreach('/home/droquo/nyam-hydra/data/ingest/MCNY_ephemera_custom-xml-cropped.csv', headers: true) do |row|

			Ephemera.create!(row.to_hash)
				
			
		end
	
	end
end