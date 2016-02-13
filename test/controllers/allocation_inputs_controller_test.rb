require 'test_helper'

class AllocationInputsControllerTest < ActionController::TestCase
  setup do
    @allocation_input = allocation_inputs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:allocation_inputs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create allocation_input" do
    assert_difference('AllocationInput.count') do
      post :create, allocation_input: { allocation_basis: @allocation_input.allocation_basis, date_dim_id: @allocation_input.date_dim_id, input_date: @allocation_input.input_date, product_id: @allocation_input.product_id, product_name: @allocation_input.product_name, units: @allocation_input.units }
    end

    assert_redirected_to allocation_input_path(assigns(:allocation_input))
  end

  test "should show allocation_input" do
    get :show, id: @allocation_input
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @allocation_input
    assert_response :success
  end

  test "should update allocation_input" do
    patch :update, id: @allocation_input, allocation_input: { allocation_basis: @allocation_input.allocation_basis, date_dim_id: @allocation_input.date_dim_id, input_date: @allocation_input.input_date, product_id: @allocation_input.product_id, product_name: @allocation_input.product_name, units: @allocation_input.units }
    assert_redirected_to allocation_input_path(assigns(:allocation_input))
  end

  test "should destroy allocation_input" do
    assert_difference('AllocationInput.count', -1) do
      delete :destroy, id: @allocation_input
    end

    assert_redirected_to allocation_inputs_path
  end
end
