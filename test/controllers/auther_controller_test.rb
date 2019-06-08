require 'test_helper'

class AutherControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get auther_show_url
    assert_response :success
  end

end
