class Movie < ApplicationRecord
    has_many :showtimes
    validates :title, :rating, :length, presence: true
end
