class Score < ApplicationRecord

  #associations
  belongs_to :team
  belongs_to :event

  #validations
  validates :score, numericality: { greater_than: 0 }

  #methods

end
