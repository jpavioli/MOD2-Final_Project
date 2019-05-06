class CreateCompetitions < ActiveRecord::Migration[5.2]
  def change
    create_table :competitions do |t|
      t.string :name
      t.string :description
      t.string :location
      t.datetime :datetime
      t.string :status

      t.timestamps
    end
  end
end
