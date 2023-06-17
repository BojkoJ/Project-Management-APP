class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.string :nazev
      t.string :description

      t.timestamps
    end
    create_table :users do |t|

      t.timestamps
    end
  end
end
