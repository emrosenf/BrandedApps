require 'test_helper'

class AppsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get messages" do
    get :messages
    assert_response :success
  end

  test "should get settings" do
    get :settings
    assert_response :success
  end

  test "should get analytics" do
    get :analytics
    assert_response :success
  end

end
