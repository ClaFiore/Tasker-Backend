class Notification < ApplicationRecord
    belongs_to :task
    belongs_to :team_member, class_name: "Employee"
    belongs_to :team_leader, class_name: "Employee"

    def time
        self.created_at.strftime("%b %-d %y, %l:%M%P")
    end
end
