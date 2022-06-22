require "test_helper"

class TaskListControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get task_list_index_url
    assert_response :success
  end
end
