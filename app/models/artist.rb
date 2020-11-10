class Artist < ApplicationRecord
    belongs_to :location
    has_many :artworks

    validates :name, :bio, :location_id, presence: true
end
