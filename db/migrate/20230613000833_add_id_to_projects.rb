class AddIdToProjects < ActiveRecord::Migration[7.0]
  def change
    add_column :projects, :project_id, :integer
    add_index :projects, :project_id
  end
end
