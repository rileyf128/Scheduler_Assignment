require "test_helper"

class WorkOrdersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get work_orders_index_url
    assert_response :success
  end

  test "should get input" do
    get work_orders_input_url
    assert_response :success
  end
end
