class Project < ApplicationRecord
    has_many :tasks
    has_many :goals
    belongs_to :team

    def due_date
        self.due_by.strftime("%B %d %Y")
    end

end
