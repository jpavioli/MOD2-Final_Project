class Event < ApplicationRecord

    #associations
    belongs_to :competition
    has_many :scores
    has_many :teams, through: :scores

    #validations

    #methods

    
end
