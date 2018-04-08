class CreateShowtimes < ActiveRecord::Migration[5.0]
  def change
    create_table :showtimes do |t|
      t.string :showtime
      t.belongs_to :movie
      t.belongs_to :theatre
      t.timestamps
    end
  end
end
