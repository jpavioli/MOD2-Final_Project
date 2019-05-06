class Team < ApplicationRecord

  #associations
  belongs_to :competition
  has_many :athletes
  has_many :scores
  has_many :events, through: :scores

  # #validations
  # validates :name, presence: true

  #methods

end
