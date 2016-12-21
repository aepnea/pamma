require 'test_helper'

class PostulationDatesControllerTest < ActionController::TestCase
  setup do
    @postulation_date = postulation_dates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:postulation_dates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create postulation_date" do
    assert_difference('PostulationDate.count') do
      post :create, postulation_date: { date_begin: @postulation_date.date_begin, date_end: @postulation_date.date_end, name: @postulation_date.name, postulation_standard_id: @postulation_date.postulation_standard_id, region_id: @postulation_date.region_id, state: @postulation_date.state, user_type: @postulation_date.user_type }
    end

    assert_redirected_to postulation_date_path(assigns(:postulation_date))
  end

  test "should show postulation_date" do
    get :show, id: @postulation_date
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @postulation_date
    assert_response :success
  end

  test "should update postulation_date" do
    patch :update, id: @postulation_date, postulation_date: { date_begin: @postulation_date.date_begin, date_end: @postulation_date.date_end, name: @postulation_date.name, postulation_standard_id: @postulation_date.postulation_standard_id, region_id: @postulation_date.region_id, state: @postulation_date.state, user_type: @postulation_date.user_type }
    assert_redirected_to postulation_date_path(assigns(:postulation_date))
  end

  test "should destroy postulation_date" do
    assert_difference('PostulationDate.count', -1) do
      delete :destroy, id: @postulation_date
    end

    assert_redirected_to postulation_dates_path
  end
end
