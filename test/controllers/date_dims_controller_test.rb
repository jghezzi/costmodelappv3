require 'test_helper'

class DateDimsControllerTest < ActionController::TestCase
  setup do
    @date_dim = date_dims(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:date_dims)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create date_dim" do
    assert_difference('DateDim.count') do
      post :create, date_dim: { beginning_period: @date_dim.beginning_period, ending_period: @date_dim.ending_period, input_date: @date_dim.input_date }
    end

    assert_redirected_to date_dim_path(assigns(:date_dim))
  end

  test "should show date_dim" do
    get :show, id: @date_dim
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @date_dim
    assert_response :success
  end

  test "should update date_dim" do
    patch :update, id: @date_dim, date_dim: { beginning_period: @date_dim.beginning_period, ending_period: @date_dim.ending_period, input_date: @date_dim.input_date }
    assert_redirected_to date_dim_path(assigns(:date_dim))
  end

  test "should destroy date_dim" do
    assert_difference('DateDim.count', -1) do
      delete :destroy, id: @date_dim
    end

    assert_redirected_to date_dims_path
  end
end
