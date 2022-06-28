class CreateAllTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :all_tasks do |t|
      t.string :task_name
      t.string :task_title
      t.string :task_description
      t.datetime :task_due_date
      t.boolean :task_completed

      t.timestamps
    end
  end
end
