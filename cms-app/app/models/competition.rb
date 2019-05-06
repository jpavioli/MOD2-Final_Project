class Competition < ApplicationRecord

    has_many :teams
    has_many :events

    validates :name, presence: true
    validates :description, length: { minimum: 10 }

end
