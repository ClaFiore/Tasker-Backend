class CreateGoals < ActiveRecord::Migration[6.0]
  def change
    create_table :goals do |t|
      t.string :title
      t.string :content
      t.datetime :due_by
      t.integer :project_id
      t.string :status

      t.timestamps
    end
  end
end
