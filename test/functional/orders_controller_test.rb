require 'test_helper'

class OrdersControllerTest < ActionController::TestCase
  setup do
    @order = orders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:orders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create order" do
    assert_difference('Order.count') do
      post :create, order: { customer_address: @order.customer_address, customer_email: @order.customer_email, customer_fname: @order.customer_fname, customer_lname: @order.customer_lname, customer_phone: @order.customer_phone, delivered_at: @order.delivered_at, ordered_at: @order.ordered_at, product_id: @order.product_id, status: @order.status }
    end

    assert_redirected_to order_path(assigns(:order))
  end

  test "should show order" do
    get :show, id: @order
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @order
    assert_response :success
  end

  test "should update order" do
    put :update, id: @order, order: { customer_address: @order.customer_address, customer_email: @order.customer_email, customer_fname: @order.customer_fname, customer_lname: @order.customer_lname, customer_phone: @order.customer_phone, delivered_at: @order.delivered_at, ordered_at: @order.ordered_at, product_id: @order.product_id, status: @order.status }
    assert_redirected_to order_path(assigns(:order))
  end

  test "should destroy order" do
    assert_difference('Order.count', -1) do
      delete :destroy, id: @order
    end

    assert_redirected_to orders_path
  end
end
