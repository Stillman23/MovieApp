class RemoveShowtimeIdFromTickets < ActiveRecord::Migration[5.0]
  def change
    remove_column :tickets, :integer
  end
end
