require 'test_helper'

class TaskCopiesControllerTest < ActionController::TestCase
  setup do
    @task_copy = task_copies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:task_copies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create task_copy" do
    assert_difference('TaskCopy.count') do
      post :create, task_copy: { current_date: @task_copy.current_date, publisher_id: @task_copy.publisher_id, state: @task_copy.state, task_id: @task_copy.task_id }
    end

    assert_redirected_to task_copy_path(assigns(:task_copy))
  end

  test "should show task_copy" do
    get :show, id: @task_copy
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @task_copy
    assert_response :success
  end

  test "should update task_copy" do
    patch :update, id: @task_copy, task_copy: { current_date: @task_copy.current_date, publisher_id: @task_copy.publisher_id, state: @task_copy.state, task_id: @task_copy.task_id }
    assert_redirected_to task_copy_path(assigns(:task_copy))
  end

  test "should destroy task_copy" do
    assert_difference('TaskCopy.count', -1) do
      delete :destroy, id: @task_copy
    end

    assert_redirected_to task_copies_path
  end
end
