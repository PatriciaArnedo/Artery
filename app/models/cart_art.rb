class CartArt < ApplicationRecord
    belongs_to :cart
    belongs_to :artwork
end
