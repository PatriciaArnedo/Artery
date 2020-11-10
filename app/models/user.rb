class User < ApplicationRecord
    has_many :carts

    validates :username, :email, :password, presence: true
    validates :password, length: { in: 3..9 }
    validates :email, :username, uniqueness: true
    validates :zip_code, numericality: {greater_than_or_equal_to: 10000, less_than: 100000, message: "is not valid."} 

    has_secure_password
end
