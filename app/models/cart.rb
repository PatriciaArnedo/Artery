class Cart < ApplicationRecord
    belongs_to :user
    has_many :cartarts
    has_many :artworks, through: :cartart
end
