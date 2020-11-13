class WelcomeController < ApplicationController


    def home
        @artwork1 = Artwork.find(62)
        @artwork2 = Artwork.find(39)
        @artwork3 = Artwork.find(53)
        
    end
end