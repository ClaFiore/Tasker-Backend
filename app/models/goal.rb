class Goal < ApplicationRecord
    belongs_to :project
    has_many :notifications, as: :notifiable

    def team
        Team.find(self.project.team_id)
    end
end
