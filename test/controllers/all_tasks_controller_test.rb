require "test_helper"

class AllTasksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @all_task = all_tasks(:one)
  end

  test "should get index" do
    get all_tasks_url
    assert_response :success
  end

  test "should get new" do
    get new_all_task_url
    assert_response :success
  end

  test "should create all_task" do
    assert_difference('AllTask.count') do
      post all_tasks_url, params: { all_task: { task_completed: @all_task.task_completed, task_description: @all_task.task_description, task_due_date: @all_task.task_due_date, task_name: @all_task.task_name, task_title: @all_task.task_title } }
    end

    assert_redirected_to all_task_url(AllTask.last)
  end

  test "should show all_task" do
    get all_task_url(@all_task)
    assert_response :success
  end

  test "should get edit" do
    get edit_all_task_url(@all_task)
    assert_response :success
  end

  test "should update all_task" do
    patch all_task_url(@all_task), params: { all_task: { task_completed: @all_task.task_completed, task_description: @all_task.task_description, task_due_date: @all_task.task_due_date, task_name: @all_task.task_name, task_title: @all_task.task_title } }
    assert_redirected_to all_task_url(@all_task)
  end

  test "should destroy all_task" do
    assert_difference('AllTask.count', -1) do
      delete all_task_url(@all_task)
    end

    assert_redirected_to all_tasks_url
  end
end
