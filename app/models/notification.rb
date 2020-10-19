class Notification < ApplicationRecord
    belongs_to :task
    belongs_to :team_member, class_name: "Employee"
    belongs_to :team_leader, class_name: "Employee"

    def time
        correct_time = ( self.created_at.to_time - 4.hours).to_datetime
        correct_time.strftime("%b %-d %y, %l:%M%P")
    end
end


