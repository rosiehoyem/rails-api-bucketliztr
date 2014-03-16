require 'test_helper'

class ListItemsControllerTest < ActionController::TestCase
  setup do
    @list_item = list_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:list_items)
  end

  test "should create list_item" do
    assert_difference('ListItem.count') do
      post :create, list_item: { content: @list_item.content }
    end

    assert_response 201
  end

  test "should show list_item" do
    get :show, id: @list_item
    assert_response :success
  end

  test "should update list_item" do
    put :update, id: @list_item, list_item: { content: @list_item.content }
    assert_response 204
  end

  test "should destroy list_item" do
    assert_difference('ListItem.count', -1) do
      delete :destroy, id: @list_item
    end

    assert_response 204
  end
end
