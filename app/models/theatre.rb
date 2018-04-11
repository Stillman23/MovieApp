class Theatre < ApplicationRecord
    has_many :showtimes

    validates :name, :max_seating, presence: true
end
