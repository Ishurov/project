require 'test_helper'

class StillagesControllerTest < ActionController::TestCase
  setup do
    @stillage = stillages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stillages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create stillage" do
    assert_difference('Stillage.count') do
      post :create, stillage: { hall_id: @stillage.hall_id, index: @stillage.index }
    end

    assert_redirected_to stillage_path(assigns(:stillage))
  end

  test "should show stillage" do
    get :show, id: @stillage
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @stillage
    assert_response :success
  end

  test "should update stillage" do
    patch :update, id: @stillage, stillage: { hall_id: @stillage.hall_id, index: @stillage.index }
    assert_redirected_to stillage_path(assigns(:stillage))
  end

  test "should destroy stillage" do
    assert_difference('Stillage.count', -1) do
      delete :destroy, id: @stillage
    end

    assert_redirected_to stillages_path
  end
end
