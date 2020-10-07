class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :content
      t.integer :team_id
      t.datetime :due_by
      t.string :status

      t.timestamps
    end
  end
end
