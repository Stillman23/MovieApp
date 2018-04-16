class AddShowtimesToTicket < ActiveRecord::Migration[5.0]
  def change
    add_column :tickets, :showtime, :datetime
  end
end
