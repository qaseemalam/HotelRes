require 'test_helper'

class SearchControllerTest < ActionController::TestCase
  test "should get reservation" do
    get :reservation
    assert_response :success
  end

end
