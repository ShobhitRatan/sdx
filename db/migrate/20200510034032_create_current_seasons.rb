class CreateCurrentSeasons < ActiveRecord::Migration[6.0]
  def change
    create_table :current_seasons do |t|
      t.integer :season_id
      t.integer :game_id

      t.timestamps
    end
  end
end
