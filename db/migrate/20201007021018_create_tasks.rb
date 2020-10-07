class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :content
      t.datetime :start
      t.datetime :end
      t.integer :project_id
      t.integer :team_member_id
      t.string :priority
      t.string :status
      t.integer :repeat

      t.timestamps
    end
  end
end
