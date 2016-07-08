require 'test_helper'

class ResidentPortalControllerTest < ActionDispatch::IntegrationTest
  test "should get dashboard" do
    get resident_portal_dashboard_url
    assert_response :success
  end

end
