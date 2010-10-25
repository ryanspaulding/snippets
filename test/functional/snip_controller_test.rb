require 'test_helper'

class SnipControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
