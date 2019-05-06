class Athlete < ApplicationRecord

  #associations
  belongs_to :team

  # #validations
  validates :first_name, presence: true
  validates :bio, length: { maximum: 500 }
  validates :age, numericality: { only_integer: true, greater_than: 0 }
  validates :height, numericality: { only_integer: true, greater_than: 0 }
  validates :weight, numericality: { only_integer: true, greater_than: 0 }
  validates :jersey_number, numericality: { only_integer: true, greater_than: 0 }

  #methods
  def name
    "#{first_name} #{last_name}"
  end

  def height_neat
    "#{(height/12).floor} ft #{height%12} in"
  end

end
