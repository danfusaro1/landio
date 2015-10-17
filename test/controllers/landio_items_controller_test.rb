require 'test_helper'

class LandioItemsControllerTest < ActionController::TestCase
  setup do
    @landio_item = landio_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:landio_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create landio_item" do
    assert_difference('LandioItem.count') do
      post :create, landio_item: { description: @landio_item.description }
    end

    assert_redirected_to landio_item_path(assigns(:landio_item))
  end

  test "should show landio_item" do
    get :show, id: @landio_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @landio_item
    assert_response :success
  end

  test "should update landio_item" do
    patch :update, id: @landio_item, landio_item: { description: @landio_item.description }
    assert_redirected_to landio_item_path(assigns(:landio_item))
  end

  test "should destroy landio_item" do
    assert_difference('LandioItem.count', -1) do
      delete :destroy, id: @landio_item
    end

    assert_redirected_to landio_items_path
  end
end
