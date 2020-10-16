class ChangeColumnPhotoInEmployees < ActiveRecord::Migration[6.0]
  def change
    add_column :employees, :color, :string
  end
end
