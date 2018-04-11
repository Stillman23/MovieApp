class Ticket < ApplicationRecord
    belongs_to :showtime
    belongs_to :order

 validates :show_id, :first_name, :last_name, :email_address, presence: true
  validates :email_address, confirmation: true
  validates_format_of :email_address, :with => /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/
  validates :credit_card_number, length: { minimum: 13 }
  validates :credit_card_number, length: { maximum: 19 }
  validate  :check_age
  validate  :check_card_is_valid?
end
