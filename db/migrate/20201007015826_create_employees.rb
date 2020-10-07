class CreateEmployees < ActiveRecord::Migration[6.0]
  def change
    create_table :employees do |t|
      t.integer :team_id
      t.string :first_name
      t.string :last_name
      t.string :title
      t.string :department
      t.string :photo
      t.string :email
      t.string :password_digest
      t.string :dob
      t.string :address
      t.string :phone

      t.timestamps
    end
  end
end
