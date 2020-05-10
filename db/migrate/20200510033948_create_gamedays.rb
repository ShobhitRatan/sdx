class CreateGamedays < ActiveRecord::Migration[6.0]
  def change
    create_table :gamedays do |t|
      t.integer :team_id
      t.integer :game_id
      t.string :winner
      t.string :loser

      t.timestamps
    end
  end
end
