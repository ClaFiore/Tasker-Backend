class ChangeNotificationsTable < ActiveRecord::Migration[6.0]
  def change
    remove_column :notifications, :content
    remove_column :notifications, :title
    remove_column :notifications, :notifiable_type
    remove_column :notifications, :notifiable_id
    remove_column :notifications, :from_employee_id
    remove_column :notifications, :to_employee_id
    add_column :notifications, :team_member_id, :integer
    add_column :notifications, :team_leader_id, :integer
    add_column :notifications, :task_id, :integer
  end
end
