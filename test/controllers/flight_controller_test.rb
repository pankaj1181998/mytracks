require 'test_helper'

class FlightControllerTest < ActionDispatch::IntegrationTest
  test "should get search" do
    get flight_search_url
    assert_response :success
  end

end
