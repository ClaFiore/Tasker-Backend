class Notification < ApplicationRecord
    belongs_to :notifiable, polymorphic: true
    belongs_to :team_member, class_name: "Employee"
    belongs_to :team_leader, class_name: "Employee"
end
