class Technician < ApplicationRecord
  has_many :work_orders, :foreign_key => "technician_id" 
  has_many :locations, :through => :work_orders
end
