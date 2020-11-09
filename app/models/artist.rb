class Artist < ApplicationRecord
    belongs_to :location
    has_many :artworks
end
