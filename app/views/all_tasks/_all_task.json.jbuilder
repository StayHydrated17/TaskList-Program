json.extract! all_task, :id, :task_name, :task_title, :task_description, :task_due_date, :task_completed, :created_at, :updated_at
json.url all_task_url(all_task, format: :json)
