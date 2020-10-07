class RemoveTeamLeaderFromTeam < ActiveRecord::Migration[6.0]
  def change
    remove_column :teams, :team_leader_id, :integer
  end
end
