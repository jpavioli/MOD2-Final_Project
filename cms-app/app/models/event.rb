class Event < ApplicationRecord
    belongs_to :competition
    has_many :scores
    has_many :teams, through: :scores

    
end
