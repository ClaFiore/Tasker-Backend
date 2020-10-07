class CreateNotifications < ActiveRecord::Migration[6.0]
  def change
    create_table :notifications do |t|
      t.string :title
      t.string :content
      t.string :notifiable_type
      t.integer :notifiable_id
      t.integer :from_employee_id
      t.integer :to_employee_id
      t.boolean :read

      t.timestamps
    end
  end
end
