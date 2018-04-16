class RemoveShowtimeIdFromTickets < ActiveRecord::Migration[5.0]
  def change
    remove_column :tickets, :showtime_id, :integer
  end
end
