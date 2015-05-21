require 'test_helper'

class WelcomeControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get fireworks" do
    get :fireworks
    assert_response :success
  end

end
