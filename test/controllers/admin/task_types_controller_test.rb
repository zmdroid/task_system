require 'test_helper'

class Admin::TaskTypesControllerTest < ActionController::TestCase
  setup do
    @admin_task_type = admin_task_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_task_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_task_type" do
    assert_difference('Admin::TaskType.count') do
      post :create, admin_task_type: { name: @admin_task_type.name, remark: @admin_task_type.remark }
    end

    assert_redirected_to admin_task_type_path(assigns(:admin_task_type))
  end

  test "should show admin_task_type" do
    get :show, id: @admin_task_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_task_type
    assert_response :success
  end

  test "should update admin_task_type" do
    patch :update, id: @admin_task_type, admin_task_type: { name: @admin_task_type.name, remark: @admin_task_type.remark }
    assert_redirected_to admin_task_type_path(assigns(:admin_task_type))
  end

  test "should destroy admin_task_type" do
    assert_difference('Admin::TaskType.count', -1) do
      delete :destroy, id: @admin_task_type
    end

    assert_redirected_to admin_task_types_path
  end
end
