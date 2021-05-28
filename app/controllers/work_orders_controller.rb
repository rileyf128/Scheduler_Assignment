class WorkOrdersController < ApplicationController
  def index
  	  @work_orders = WorkOrder.all
  end

  def input
  end
end
