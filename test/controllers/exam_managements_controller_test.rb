require 'test_helper'

class ExamManagementsControllerTest < ActionController::TestCase
  setup do
    @exam_management = exam_managements(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:exam_managements)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create exam_management" do
    assert_difference('ExamManagement.count') do
      post :create, exam_management: {  }
    end

    assert_redirected_to exam_management_path(assigns(:exam_management))
  end

  test "should show exam_management" do
    get :show, id: @exam_management
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @exam_management
    assert_response :success
  end

  test "should update exam_management" do
    patch :update, id: @exam_management, exam_management: {  }
    assert_redirected_to exam_management_path(assigns(:exam_management))
  end

  test "should destroy exam_management" do
    assert_difference('ExamManagement.count', -1) do
      delete :destroy, id: @exam_management
    end

    assert_redirected_to exam_managements_path
  end
end
