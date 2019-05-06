class Team < ApplicationRecord

  #associations
  belongs_to :competition
  has_many :athletes
  has_many :scores
  has_many :events, through: :scores

  # #validations
  # validates :name, presence: true

  #methods
  def full_name
    if self.sponsor != nil
      "The #{self.sponsor} #{self.name}"
    elsif self.location != nil
      "The #{self.location} #{self.name}"
    else
      self.name
    end
  end

end
