class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.integer :user_id
      t.string :address_line_1
      t.string :address_type
      t.string :address_line_2
      t.string :city
      t.integer :state_id
      t.integer :zipcode
      t.integer :country_id

      t.timestamps
    end
  end
end
