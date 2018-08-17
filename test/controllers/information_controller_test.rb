require 'test_helper'

class InformationControllerTest < ActionDispatch::IntegrationTest
  test "should get contact" do
    get information_contact_url
    assert_response :success
  end

end
