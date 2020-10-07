class AddTeamleaderidToEmployee < ActiveRecord::Migration[6.0]
  def change
    add_column :employees, :managed_team_id, :integer
  end
end
