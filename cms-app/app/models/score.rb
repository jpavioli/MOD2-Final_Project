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
  def seconds_to_min(seconds)
    Time.at(seconds).utc.strftime("%H:%M:%S")
  end

  def weight_pounds(weight) 
    "#{weight} lbs"
  end

  def distance_feet_and_inches(inches)
    divmod_output = inches.divmod(12)
    puts "#{divmod_output[0]} ft, #{divmod_output[1]} in"
  end

  def feet_and_inches_to_inches(input1, input2)
    puts (input1 * 12) + input2
  end

  




end
