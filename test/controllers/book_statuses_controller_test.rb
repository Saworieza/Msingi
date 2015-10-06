require 'test_helper'

class BookStatusesControllerTest < ActionController::TestCase
  setup do
    @book_status = book_statuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:book_statuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create book_status" do
    assert_difference('BookStatus.count') do
      post :create, book_status: { comment: @book_status.comment, status: @book_status.status }
    end

    assert_redirected_to book_status_path(assigns(:book_status))
  end

  test "should show book_status" do
    get :show, id: @book_status
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @book_status
    assert_response :success
  end

  test "should update book_status" do
    patch :update, id: @book_status, book_status: { comment: @book_status.comment, status: @book_status.status }
    assert_redirected_to book_status_path(assigns(:book_status))
  end

  test "should destroy book_status" do
    assert_difference('BookStatus.count', -1) do
      delete :destroy, id: @book_status
    end

    assert_redirected_to book_statuses_path
  end
end
