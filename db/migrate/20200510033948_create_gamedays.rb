class CreateGamedays < ActiveRecord::Migration[6.0]
  def change
    create_table :gamedays do |t|
      t.integer :team_id
      t.integer :game_id
      t.string :score
      t.string :time_of_possession
      t.float :passing_yards
      t.float :rushing_yards
      t.integer :total_turnovers
      t.integer :penalties

      t.timestamps
    end
  end
end
