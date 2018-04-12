class Theatre < ApplicationRecord
    has_many :movies 
    
    

    validates :name, :max_seating, presence: true
end
