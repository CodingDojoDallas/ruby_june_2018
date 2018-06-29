require 'test_helper'

class HellosControllerTest < ActionController::TestCase
  test "should get say/hello" do
    get :say/hello
    assert_response :success
  end

end
