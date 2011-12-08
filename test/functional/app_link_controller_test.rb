require 'test_helper'

class AppLinkControllerTest < ActionController::TestCase
  test "should get store" do
    get :store
    assert_response :success
  end

end
