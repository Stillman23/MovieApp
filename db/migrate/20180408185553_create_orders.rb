class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.string :customer_name
      t.string :customer_email
      t.string :credit_card_number
      t.integer :credit_card_expiration_date
      t.timestamps
    end
  end
end
