require 'test_helper'

class AllocationsControllerTest < ActionController::TestCase
  setup do
    @allocation = allocations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:allocations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create allocation" do
    assert_difference('Allocation.count') do
      post :create, allocation: { allocation_date: @allocation.allocation_date, allocation_factor: @allocation.allocation_factor, allocation_input_id: @allocation.allocation_input_id, allocation_master_id: @allocation.allocation_master_id, date_dim_id: @allocation.date_dim_id, product_id: @allocation.product_id }
    end

    assert_redirected_to allocation_path(assigns(:allocation))
  end

  test "should show allocation" do
    get :show, id: @allocation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @allocation
    assert_response :success
  end

  test "should update allocation" do
    patch :update, id: @allocation, allocation: { allocation_date: @allocation.allocation_date, allocation_factor: @allocation.allocation_factor, allocation_input_id: @allocation.allocation_input_id, allocation_master_id: @allocation.allocation_master_id, date_dim_id: @allocation.date_dim_id, product_id: @allocation.product_id }
    assert_redirected_to allocation_path(assigns(:allocation))
  end

  test "should destroy allocation" do
    assert_difference('Allocation.count', -1) do
      delete :destroy, id: @allocation
    end

    assert_redirected_to allocations_path
  end
end
