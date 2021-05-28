class TechniciansController < ApplicationController
  def index
  	@technicians = Technician.all
  end

  def input
  end
end
