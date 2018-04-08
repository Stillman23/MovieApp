class CreateTickets < ActiveRecord::Migration[5.0]
  def change
    create_table :tickets do |t|
      t.float :price
      t.belongs_to :showtime
      t.belongs_to :order
      t.timestamps
    end
  end
end
