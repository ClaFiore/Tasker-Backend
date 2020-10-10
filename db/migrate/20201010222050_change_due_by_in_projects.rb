class ChangeDueByInProjects < ActiveRecord::Migration[6.0]
  def change
    change_column :projects, :due_by, :date
  end
end
