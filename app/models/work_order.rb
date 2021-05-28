class WorkOrder < ApplicationRecord
	belongs_to :location
	delegate :name, to: :location #-> @location.name
	delegate :city, to: :location #-> @location.city
	belongs_to :technician
	delegate :name, to: :technician, prefix: true #-> @technician.name
	WorkOrder.order("technician_id")
	def name 
		"technician_"
	end
end
