class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :location
      t.string :sponsor
      t.string :type
      t.integer :competition_id
      t.timestamps
    end
  end
end
