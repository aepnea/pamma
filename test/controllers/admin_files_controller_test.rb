require 'test_helper'

class AdminFilesControllerTest < ActionController::TestCase
  test "should get user_list" do
    get :user_list
    assert_response :success
  end

  test "should get asociative_user_list" do
    get :asociative_user_list
    assert_response :success
  end

  test "should get user_create" do
    get :user_create
    assert_response :success
  end

  test "should get asociative_user_create" do
    get :asociative_user_create
    assert_response :success
  end

end
