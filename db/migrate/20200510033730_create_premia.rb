class CreatePremia < ActiveRecord::Migration[6.0]
  def change
    create_table :premia do |t|
      t.integer :user_id
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end
end
