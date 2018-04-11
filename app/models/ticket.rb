class Ticket < ApplicationRecord
    belongs_to :showtime
    belongs_to :order

    validates :show_id, :customer_name, :customer_email, presence: true
    validates :customer_email, confirmation: true
    validates_format_of :customer_email, :with => /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/
    validates :credit_card_number, length: { minimum: 10 }
    validates :credit_card_number, length: { maximum: 15 }
end
