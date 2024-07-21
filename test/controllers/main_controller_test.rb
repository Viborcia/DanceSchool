require "test_helper"

class MainControllerTest < ActionDispatch::IntegrationTest
  test "should get main_stage" do
    get main_main_stage_url
    assert_response :success
  end
end
