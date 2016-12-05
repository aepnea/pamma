require 'test_helper'

class PostulationsControllerTest < ActionController::TestCase
  setup do
    @postulation = postulations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:postulations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create postulation" do
    assert_difference('Postulation.count') do
      post :create, postulation: { asociative_users_id: @postulation.asociative_users_id, beneficiary_id: @postulation.beneficiary_id, benefit_requested_id: @postulation.benefit_requested_id, characterization_work_id: @postulation.characterization_work_id, family_group_id: @postulation.family_group_id, milestone_date_begin: @postulation.milestone_date_begin, milestone_date_end: @postulation.milestone_date_end, milestone_description: @postulation.milestone_description, milestone_name: @postulation.milestone_name, pamma_participation_id: @postulation.pamma_participation_id, personal_backgrounds_id: @postulation.personal_backgrounds_id, representative_id: @postulation.representative_id, user_id: @postulation.user_id }
    end

    assert_redirected_to postulation_path(assigns(:postulation))
  end

  test "should show postulation" do
    get :show, id: @postulation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @postulation
    assert_response :success
  end

  test "should update postulation" do
    patch :update, id: @postulation, postulation: { asociative_users_id: @postulation.asociative_users_id, beneficiary_id: @postulation.beneficiary_id, benefit_requested_id: @postulation.benefit_requested_id, characterization_work_id: @postulation.characterization_work_id, family_group_id: @postulation.family_group_id, milestone_date_begin: @postulation.milestone_date_begin, milestone_date_end: @postulation.milestone_date_end, milestone_description: @postulation.milestone_description, milestone_name: @postulation.milestone_name, pamma_participation_id: @postulation.pamma_participation_id, personal_backgrounds_id: @postulation.personal_backgrounds_id, representative_id: @postulation.representative_id, user_id: @postulation.user_id }
    assert_redirected_to postulation_path(assigns(:postulation))
  end

  test "should destroy postulation" do
    assert_difference('Postulation.count', -1) do
      delete :destroy, id: @postulation
    end

    assert_redirected_to postulations_path
  end
end
