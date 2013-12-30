require 'test_helper'

class TasksControllerTest < ActionController::TestCase
  setup do
    @task = tasks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tasks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create task" do
    assert_difference('Task.count') do
      post :create, task: { description: @task.description, end_date: @task.end_date, location: @task.location, max_person: @task.max_person, max_price: @task.max_price, min_person: @task.min_person, min_price: @task.min_price, publisher_id: @task.publisher_id, start_date: @task.start_date, state: @task.state, task_name: @task.task_name, task_type_id: @task.task_type_id }
    end

    assert_redirected_to task_path(assigns(:task))
  end

  test "should show task" do
    get :show, id: @task
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @task
    assert_response :success
  end

  test "should update task" do
    patch :update, id: @task, task: { description: @task.description, end_date: @task.end_date, location: @task.location, max_person: @task.max_person, max_price: @task.max_price, min_person: @task.min_person, min_price: @task.min_price, publisher_id: @task.publisher_id, start_date: @task.start_date, state: @task.state, task_name: @task.task_name, task_type_id: @task.task_type_id }
    assert_redirected_to task_path(assigns(:task))
  end

  test "should destroy task" do
    assert_difference('Task.count', -1) do
      delete :destroy, id: @task
    end

    assert_redirected_to tasks_path
  end
end
