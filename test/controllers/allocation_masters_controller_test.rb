require 'test_helper'

class AllocationMastersControllerTest < ActionController::TestCase
  setup do
    @allocation_master = allocation_masters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:allocation_masters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create allocation_master" do
    assert_difference('AllocationMaster.count') do
      post :create, allocation_master: { allocation_input_id: @allocation_master.allocation_input_id, allocation_name: @allocation_master.allocation_name }
    end

    assert_redirected_to allocation_master_path(assigns(:allocation_master))
  end

  test "should show allocation_master" do
    get :show, id: @allocation_master
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @allocation_master
    assert_response :success
  end

  test "should update allocation_master" do
    patch :update, id: @allocation_master, allocation_master: { allocation_input_id: @allocation_master.allocation_input_id, allocation_name: @allocation_master.allocation_name }
    assert_redirected_to allocation_master_path(assigns(:allocation_master))
  end

  test "should destroy allocation_master" do
    assert_difference('AllocationMaster.count', -1) do
      delete :destroy, id: @allocation_master
    end

    assert_redirected_to allocation_masters_path
  end
end
