class AddCreditCardNumberToOrder < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :credit_card_number, :string
    add_column :orders, :credit_card_expiration_date, :integer
  end
end
