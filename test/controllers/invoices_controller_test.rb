require 'test_helper'

class InvoicesControllerTest < ActionController::TestCase
  setup do
    @invoice = invoices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:invoices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create invoice" do
    assert_difference('Invoice.count') do
      post :create, invoice: { account_code: @invoice.account_code, allocation_id: @invoice.allocation_id, company_code: @invoice.company_code, date_dim_id: @invoice.date_dim_id, department_code: @invoice.department_code, gl_date: @invoice.gl_date, location_code: @invoice.location_code, net_amount: @invoice.net_amount, period: @invoice.period, vendor_name: @invoice.vendor_name }
    end

    assert_redirected_to invoice_path(assigns(:invoice))
  end

  test "should show invoice" do
    get :show, id: @invoice
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @invoice
    assert_response :success
  end

  test "should update invoice" do
    patch :update, id: @invoice, invoice: { account_code: @invoice.account_code, allocation_id: @invoice.allocation_id, company_code: @invoice.company_code, date_dim_id: @invoice.date_dim_id, department_code: @invoice.department_code, gl_date: @invoice.gl_date, location_code: @invoice.location_code, net_amount: @invoice.net_amount, period: @invoice.period, vendor_name: @invoice.vendor_name }
    assert_redirected_to invoice_path(assigns(:invoice))
  end

  test "should destroy invoice" do
    assert_difference('Invoice.count', -1) do
      delete :destroy, id: @invoice
    end

    assert_redirected_to invoices_path
  end
end
