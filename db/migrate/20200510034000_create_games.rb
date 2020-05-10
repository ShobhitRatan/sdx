class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.integer :season_id
      t.string :score
      t.datetime :time_of_possession
      t.float :passing_yards
      t.float :rushing_yards
      t.integer :total_turnovers
      t.integer :penalties

      t.timestamps
    end
  end
end