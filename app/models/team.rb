class Team < ApplicationRecord
    has_one :team_leader, foreign_key: "managed_team_id", class_name: "Employee" #works!!
    has_many :team_members, class_name: "Employee"
    has_many :projects
end

# Suggested changes by Paul:
# change schema so the teams table has a team_leader_id, belongs_to :team_leader, optional: true

# Delete managed_team_id from Employees table