require 'test_helper'

class AuthorListsControllerTest < ActionController::TestCase
  setup do
    @author_list = author_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:author_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create author_list" do
    assert_difference('AuthorList.count') do
      post :create, author_list: { author_id: @author_list.author_id, book_id: @author_list.book_id }
    end

    assert_redirected_to author_list_path(assigns(:author_list))
  end

  test "should show author_list" do
    get :show, id: @author_list
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @author_list
    assert_response :success
  end

  test "should update author_list" do
    patch :update, id: @author_list, author_list: { author_id: @author_list.author_id, book_id: @author_list.book_id }
    assert_redirected_to author_list_path(assigns(:author_list))
  end

  test "should destroy author_list" do
    assert_difference('AuthorList.count', -1) do
      delete :destroy, id: @author_list
    end

    assert_redirected_to author_lists_path
  end
end
