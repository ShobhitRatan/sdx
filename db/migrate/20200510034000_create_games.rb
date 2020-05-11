class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.integer :season_id
      t.string :winner
      t.string :loser

      t.timestamps
    end
  end
end
