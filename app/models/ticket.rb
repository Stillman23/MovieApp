class Ticket < ApplicationRecord
    belongs_to :showtime
    belongs_to :order

    # validates :showtime, :customer_name, :customer_email, presence: true
    # validates :customer_email, confirmation: true
    # validates_format_of :customer_email, :with => /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/
    # validates :credit_card_number, length: { minimum: 13 }
    # validates :credit_card_number, length: { maximum: 19 }


def create_age(ticket_params)
    
  end

 

  def check_card_is_valid?
    array_of_numbers = []
    total = 0
    credit_card_number.to_s.split(//).reverse.each_slice(2) do |x|
      array_of_numbers << (x.last.to_i*2)
      array_of_numbers << (x.first.to_i)
    end
    array_of_numbers.each do |num|
      if num.to_i > 9
        total += (num.to_i % 10)+1
      else 
        total += num.to_i
      end
    end
    n = credit_card_number.to_s.split('')
    unless total % 10 == 0 
      errors.add(:credit_card_number, "An ERROR has occured, please try again ")
    end
  end

  
 
  
end
