require 'test_helper'

class UserPostulationsControllerTest < ActionController::TestCase
  test "should get list" do
    get :list
    assert_response :success
  end

  test "should get postulation_period" do
    get :postulation_period
    assert_response :success
  end

  test "should get postulate" do
    get :postulate
    assert_response :success
  end

end
