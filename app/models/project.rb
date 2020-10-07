class Project < ApplicationRecord
    has_many :tasks
    has_many :goals
    belongs_to :team
end
