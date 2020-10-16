class Task < ApplicationRecord
    belongs_to :project
    belongs_to :team_member, class_name: "Employee"
    has_one :notification
end
