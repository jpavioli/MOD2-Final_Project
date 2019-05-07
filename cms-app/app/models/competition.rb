class Competition < ApplicationRecord

    has_many :teams
    has_many :events

    # #validations
    # validates :name, presence: true
    # validates :description, length: { minimum: 10, maximum: 100 }
    # validates :description, presence: true

end
