require 'test_helper'

class PersonalBackgroundsControllerTest < ActionController::TestCase
  setup do
    @personal_background = personal_backgrounds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:personal_backgrounds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create personal_background" do
    assert_difference('PersonalBackground.count') do
      post :create, personal_background: { activity_type_id: @personal_background.activity_type_id, last_poll: @personal_background.last_poll, retirement_system_type_id: @personal_background.retirement_system_type_id, scholarship_type_id: @personal_background.scholarship_type_id, score: @personal_background.score, social_record_status_type_id: @personal_background.social_record_status_type_id, training_type_id: @personal_background.training_type_id, user_id: @personal_background.user_id }
    end

    assert_redirected_to personal_background_path(assigns(:personal_background))
  end

  test "should show personal_background" do
    get :show, id: @personal_background
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @personal_background
    assert_response :success
  end

  test "should update personal_background" do
    patch :update, id: @personal_background, personal_background: { activity_type_id: @personal_background.activity_type_id, last_poll: @personal_background.last_poll, retirement_system_type_id: @personal_background.retirement_system_type_id, scholarship_type_id: @personal_background.scholarship_type_id, score: @personal_background.score, social_record_status_type_id: @personal_background.social_record_status_type_id, training_type_id: @personal_background.training_type_id, user_id: @personal_background.user_id }
    assert_redirected_to personal_background_path(assigns(:personal_background))
  end

  test "should destroy personal_background" do
    assert_difference('PersonalBackground.count', -1) do
      delete :destroy, id: @personal_background
    end

    assert_redirected_to personal_backgrounds_path
  end
end
