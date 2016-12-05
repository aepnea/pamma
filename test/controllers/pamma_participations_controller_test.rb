require 'test_helper'

class PammaParticipationsControllerTest < ActionController::TestCase
  setup do
    @pamma_participation = pamma_participations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pamma_participations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pamma_participation" do
    assert_difference('PammaParticipation.count') do
      post :create, pamma_participation: { asociative_user_id: @pamma_participation.asociative_user_id, benefit_type_id: @pamma_participation.benefit_type_id, number_times: @pamma_participation.number_times, previous_beneficiary: @pamma_participation.previous_beneficiary, project_state_type_id: @pamma_participation.project_state_type_id, support_type_id: @pamma_participation.support_type_id, user_id: @pamma_participation.user_id }
    end

    assert_redirected_to pamma_participation_path(assigns(:pamma_participation))
  end

  test "should show pamma_participation" do
    get :show, id: @pamma_participation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pamma_participation
    assert_response :success
  end

  test "should update pamma_participation" do
    patch :update, id: @pamma_participation, pamma_participation: { asociative_user_id: @pamma_participation.asociative_user_id, benefit_type_id: @pamma_participation.benefit_type_id, number_times: @pamma_participation.number_times, previous_beneficiary: @pamma_participation.previous_beneficiary, project_state_type_id: @pamma_participation.project_state_type_id, support_type_id: @pamma_participation.support_type_id, user_id: @pamma_participation.user_id }
    assert_redirected_to pamma_participation_path(assigns(:pamma_participation))
  end

  test "should destroy pamma_participation" do
    assert_difference('PammaParticipation.count', -1) do
      delete :destroy, id: @pamma_participation
    end

    assert_redirected_to pamma_participations_path
  end
end
