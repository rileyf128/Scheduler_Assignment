require "test_helper"

class TechniciansControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get technicians_index_url
    assert_response :success
  end

  test "should get input" do
    get technicians_input_url
    assert_response :success
  end
end
