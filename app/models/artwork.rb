class Artwork < ApplicationRecord
    has_many :carts
    belongs_to :artist

    validates :name, :artist_id, :medium, :size, presence: true
end
