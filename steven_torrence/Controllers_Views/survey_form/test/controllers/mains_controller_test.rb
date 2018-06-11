require 'test_helper'

class MainsControllerTest < ActionController::TestCase
  test "should get process" do
    get :process
    assert_response :success
  end

end
