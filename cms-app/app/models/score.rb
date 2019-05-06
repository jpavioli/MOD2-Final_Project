class Score < ApplicationRecord

  #associations
  belongs_to :team
  belongs_to :event

  # #validations
  validates :score, numericality: { greater_than: 0 }
  validates :score, presence: true
  validates :team_id, presence: true
  validates :event_id, presence: true

  #methods

end
