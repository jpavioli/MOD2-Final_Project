class Event < ApplicationRecord

    #associations
    belongs_to :competition
    has_many :scores
    has_many :teams, through: :scores



    #validations
    validates :title, presence: true
    validates :description, presence: true
    validates :description, length: {minimum: 10}
    validates :score_type, presence: true
    validates :competition_id, presence: true

end
