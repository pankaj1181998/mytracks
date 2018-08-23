require 'test_helper'

class MyticketsControllerTest < ActionDispatch::IntegrationTest
  test "should get details" do
    get mytickets_details_url
    assert_response :success
  end

end
