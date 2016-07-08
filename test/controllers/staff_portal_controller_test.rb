require 'test_helper'

class StaffPortalControllerTest < ActionDispatch::IntegrationTest
  test "should get dashboard" do
    get staff_portal_dashboard_url
    assert_response :success
  end

end
