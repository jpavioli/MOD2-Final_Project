class Competition < ApplicationRecord

    has_many :teams
    has_many :events

    #validations
    validates :name, presence: true
    validates :description, presence: true
    validates :description, length: { minimum: 10 }
  

end
