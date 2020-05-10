class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.integer :user_id
      t.string :address_line_1
      t.string :address_type
      t.string :address_line_2
      t.string :city
      t.string :state
      t.integer :zipcode
      t.string :country 

      t.timestamps
    end
  end
end
