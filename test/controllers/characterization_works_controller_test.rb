require 'test_helper'

class CharacterizationWorksControllerTest < ActionController::TestCase
  setup do
    @characterization_work = characterization_works(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:characterization_works)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create characterization_work" do
    assert_difference('CharacterizationWork.count') do
      post :create, characterization_work: { asociative_user_id: @characterization_work.asociative_user_id, buyer_power: @characterization_work.buyer_power, commune_id: @characterization_work.commune_id, distance: @characterization_work.distance, extracted_mineral_type_id: @characterization_work.extracted_mineral_type_id, location: @characterization_work.location, mining_district: @characterization_work.mining_district, mining_information_available_type_id: @characterization_work.mining_information_available_type_id, mining_properties_constitution_type_id: @characterization_work.mining_properties_constitution_type_id, mountain_range: @characterization_work.mountain_range, number_workers: @characterization_work.number_workers, operation_type_id: @characterization_work.operation_type_id, owner_type_id: @characterization_work.owner_type_id, province_id: @characterization_work.province_id, region_id: @characterization_work.region_id, sector: @characterization_work.sector, user_id: @characterization_work.user_id, utm_east_coordinate: @characterization_work.utm_east_coordinate, utm_north_coordinate: @characterization_work.utm_north_coordinate, work_name: @characterization_work.work_name }
    end

    assert_redirected_to characterization_work_path(assigns(:characterization_work))
  end

  test "should show characterization_work" do
    get :show, id: @characterization_work
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @characterization_work
    assert_response :success
  end

  test "should update characterization_work" do
    patch :update, id: @characterization_work, characterization_work: { asociative_user_id: @characterization_work.asociative_user_id, buyer_power: @characterization_work.buyer_power, commune_id: @characterization_work.commune_id, distance: @characterization_work.distance, extracted_mineral_type_id: @characterization_work.extracted_mineral_type_id, location: @characterization_work.location, mining_district: @characterization_work.mining_district, mining_information_available_type_id: @characterization_work.mining_information_available_type_id, mining_properties_constitution_type_id: @characterization_work.mining_properties_constitution_type_id, mountain_range: @characterization_work.mountain_range, number_workers: @characterization_work.number_workers, operation_type_id: @characterization_work.operation_type_id, owner_type_id: @characterization_work.owner_type_id, province_id: @characterization_work.province_id, region_id: @characterization_work.region_id, sector: @characterization_work.sector, user_id: @characterization_work.user_id, utm_east_coordinate: @characterization_work.utm_east_coordinate, utm_north_coordinate: @characterization_work.utm_north_coordinate, work_name: @characterization_work.work_name }
    assert_redirected_to characterization_work_path(assigns(:characterization_work))
  end

  test "should destroy characterization_work" do
    assert_difference('CharacterizationWork.count', -1) do
      delete :destroy, id: @characterization_work
    end

    assert_redirected_to characterization_works_path
  end
end
