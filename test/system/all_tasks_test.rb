require "application_system_test_case"

class AllTasksTest < ApplicationSystemTestCase
  setup do
    @all_task = all_tasks(:one)
  end

  test "visiting the index" do
    visit all_tasks_url
    assert_selector "h1", text: "All Tasks"
  end

  test "creating a Task" do
    visit all_tasks_url
    click_on "New Task"

    check "Task completed" if @all_task.task_completed
    fill_in "Task description", with: @all_task.task_description
    fill_in "Task due date", with: @all_task.task_due_date
    fill_in "Task name", with: @all_task.task_name
    fill_in "Task title", with: @all_task.task_title
    click_on "Create New Task"

    assert_text "Task was successfully created"
    click_on "Back"
  end

  test "updating Task" do
    visit all_tasks_url
    click_on "Edit", match: :first

    check "Task completed" if @all_task.task_completed
    fill_in "Task description", with: @all_task.task_description
    fill_in "Task due date", with: @all_task.task_due_date
    fill_in "Task name", with: @all_task.task_name
    fill_in "Task title", with: @all_task.task_title
    click_on "Update This Task"

    assert_text "Task was successfully updated!"
    click_on "Back"
  end

  test "destroying a Task" do
    visit all_tasks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Task was successfully deleted!"
  end
end
