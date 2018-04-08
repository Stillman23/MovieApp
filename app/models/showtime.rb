class Showtime < ApplicationRecord
    has_many :tickets
    has_many :movies
    has_many :theatres
end
