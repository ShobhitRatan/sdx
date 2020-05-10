class CreatePayments < ActiveRecord::Migration[6.0]
  def change
    create_table :payments do |t|
      t.integer :user_id
      t.integer :payment_type_id
      t.integer :credit_card_digest
      t.datetime :expiry_date
      t.integer :cvv

      t.timestamps
    end
  end
end
