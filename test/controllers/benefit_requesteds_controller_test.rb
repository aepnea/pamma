require 'test_helper'

class BenefitRequestedsControllerTest < ActionController::TestCase
  setup do
    @benefit_requested = benefit_requesteds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:benefit_requesteds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create benefit_requested" do
    assert_difference('BenefitRequested.count') do
      post :create, benefit_requested: { asociative_user_id: @benefit_requested.asociative_user_id, benefit_type_id: @benefit_requested.benefit_type_id, comments: @benefit_requested.comments, estimated_investment: @benefit_requested.estimated_investment, postulation_id: @benefit_requested.postulation_id, user_id: @benefit_requested.user_id }
    end

    assert_redirected_to benefit_requested_path(assigns(:benefit_requested))
  end

  test "should show benefit_requested" do
    get :show, id: @benefit_requested
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @benefit_requested
    assert_response :success
  end

  test "should update benefit_requested" do
    patch :update, id: @benefit_requested, benefit_requested: { asociative_user_id: @benefit_requested.asociative_user_id, benefit_type_id: @benefit_requested.benefit_type_id, comments: @benefit_requested.comments, estimated_investment: @benefit_requested.estimated_investment, postulation_id: @benefit_requested.postulation_id, user_id: @benefit_requested.user_id }
    assert_redirected_to benefit_requested_path(assigns(:benefit_requested))
  end

  test "should destroy benefit_requested" do
    assert_difference('BenefitRequested.count', -1) do
      delete :destroy, id: @benefit_requested
    end

    assert_redirected_to benefit_requesteds_path
  end
end
