class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.string :name 
      t.string :winner
      t.string :loser
      t.date :gametime 
      t.timestamps
    end
  end
end
