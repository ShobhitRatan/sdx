class CreatePayments < ActiveRecord::Migration[6.0]
  def change
    create_table :payments do |t|
      t.integer :user_id
      t.string :payment_type
      t.string :credit_card 
      t.datetime :expiry_date
      t.integer :cvv

      t.timestamps
    end
  end
end
