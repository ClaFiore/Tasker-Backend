class Employee < ApplicationRecord
    belongs_to :team
    has_many :tasks, foreign_key: :team_member_id
    has_many :projects, through: :tasks
    has_secure_password
    validates :email, uniqueness: { case_sensitive: false }

    def managed_team
        if self.managed_team_id
            team = Team.find(self.managed_team_id)
            return team
        else
            return nil
        end
    end

    # def managed_members
    #     if self.managed_team_id
    #         team = Team.find(self.managed_team_id)
    #         return team.team_members
    #     else
    #         return nil
    #     end
    # end
    
end

 # has_one :team_leader, through: :team, class_name: "Employee"
    #has_one :managed_team, class_name: "Team"
    # has_many :team_members, through: :team, class_name: "Employee"