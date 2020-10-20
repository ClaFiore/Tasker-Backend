class AddColumnHeaderToNotifications < ActiveRecord::Migration[6.0]
  def change
    add_column :notifications, :header, :string
  end
end
