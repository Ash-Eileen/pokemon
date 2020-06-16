require 'test_helper'

class Pokemon2ControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get pokemon2_show_url
    assert_response :success
  end

end
