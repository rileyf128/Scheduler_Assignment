class Location < ApplicationRecord
	has_many :work_orders, :foreign_key => "location_id" 
	has_many :technicians, :through => :work_orders
end
