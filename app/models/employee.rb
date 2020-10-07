class Employee < ApplicationRecord
    belongs_to :team
    has_many :tasks
    has_many :projects, through: :tasks
    has_secure_password

    # has_one :team_leader, through: :team, class_name: "Employee"
    #has_one :managed_team, class_name: "Team"
    # has_many :team_members, through: :team, class_name: "Employee"
    
    def managed_team
        if self.managed_team
            team = Team.find(self.managed_team_id)
            return team
        else
            return 'Not managing any team'
        end
    end
    
end
