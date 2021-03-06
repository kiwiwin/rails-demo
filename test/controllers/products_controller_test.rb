require 'test_helper'

class ProductsControllerTest < ActionController::TestCase
  # setup do
  #   @product = products(:one)
  # end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:products)

    assert_select 'div.product-item', 2
    assert_select 'div.product-item img', 2
    assert_select 'div.product-item strong', 2
    assert_select 'div.product-item span', 2
  end

  # test "should get new" do
  #   get :new
  #   assert_response :success
  # end

  # test "should create product" do
  #   assert_difference('Product.count') do
  #     post :create, product: {  }
  #   end

  #   assert_redirected_to product_path(assigns(:product))
  # end

  test "should show product" do
    get :show, id: 1
    assert_response :success

    assert_select 'div#product h1', 1
    assert_select 'div#product img', 1
    assert_select 'div#product strong', 1
    assert_select 'div#product span', 1
  end

  # test "should get edit" do
  #   get :edit, id: @product
  #   assert_response :success
  # end

  # test "should update product" do
  #   patch :update, id: @product, product: {  }
  #   assert_redirected_to product_path(assigns(:product))
  # end

  # test "should destroy product" do
  #   assert_difference('Product.count', -1) do
  #     delete :destroy, id: @product
  #   end

  #   assert_redirected_to products_path
  # end
end
