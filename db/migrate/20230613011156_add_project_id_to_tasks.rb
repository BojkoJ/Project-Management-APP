class AddProjectIdToTasks < ActiveRecord::Migration[7.0]
  def change
     remove_column :tasks, :project_id
     remove_column :tasks, :user_id
  end
end
