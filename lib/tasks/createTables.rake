require 'csv'
desc "Import locations"  
	task :create_location => [:environment] do
		csv_text = File.read(Rails.root.join("lib", "locations.csv"))
		csv = CSV.parse(csv_text, :headers => true)
		csv.each do |row| 
			t = Location.new 
			t.name = row["name"] 
			t.city = row["city"]
                        t.save
                        puts "#{t.name} saved!"
		end
	end
	
	desc "Import technicians"  
	task :create_technician => [:environment] do
		csv_text = File.read(Rails.root.join("lib", "technicians.csv"))
		csv = CSV.parse(csv_text, :headers => true)
		csv.each do |row| 
			t = Technician.new 
			t.name = row["name"] 
                        t.save
                        puts "#{t.name} saved!"
		end
	end
	
	desc "Import work orders"  
	task :create_workorder => [:environment] do
		csv_text = File.read(Rails.root.join("lib", "work_orders.csv"))
		csv = CSV.parse(csv_text, :headers => true)
		csv.each do |row| 
			t = WorkOrder.new 
			t.technician_id = row["technician_id"] 
			t.location_id = row["location_id"]
			t.time = row["time"]
			t.duration = row["duration"]
			t.price = row["price"] 
                        t.save
                        puts "#{t.technician_id} saved!"
		end
	end
