require 'test_helper'

class UsageControllerTest < ActionDispatch::IntegrationTest
  test "should get steps" do
    get usage_steps_url
    assert_response :success
  end

end
