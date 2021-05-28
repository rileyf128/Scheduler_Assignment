class LocationsController < ApplicationController
  def index
  	@locations = Location.all
  end

  def input
  end
end
