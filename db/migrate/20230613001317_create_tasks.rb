class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :subject
      t.string :description
      t.integer :user_id
      t.integer :project_id

      t.timestamps
    end
  end
end
