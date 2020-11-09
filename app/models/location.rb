class Location < ApplicationRecord
    has_many :artists
    has_many :artworks, through: :artists
end
