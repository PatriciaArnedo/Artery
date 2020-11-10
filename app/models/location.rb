class Location < ApplicationRecord
    has_many :artists
    has_many :artworks, through: :artists

    validates :zip_code, numericality: {greater_than_or_equal_to: 10000, less_than: 100000, message: "is not valid."} 
    validates :city_state, :zip_code, presence: true
end

