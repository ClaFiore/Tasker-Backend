class Team < ApplicationRecord
    has_one :team_leader, foreign_key: "managed_team_id", class_name: "Employee" #works!!
    has_many :team_members, class_name: "Employee"
    has_many :projects
end
