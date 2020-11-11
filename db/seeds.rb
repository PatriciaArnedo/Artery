# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


5.times do
    User.create(
        username: Faker::Internet.user_name,
        email: Faker::Internet.email, 
        password: "123",
        zip_code: Faker::Address.zip_code
    )
end

10.times do
    Location.create(city_state: Faker::Address.city, latitude: Faker::Address.latitude, longitude: Faker::Address.longitude, zip_code: Faker::Address.zip_code)
end

8.times do 
    Artwork.create(name: Faker::Lorem.word, medium: Faker::Lorem.words(number: 4) , size: "11x10", img_url: "art goes here")
end

8.times do
    Artist.create(name: Faker::Name.name, bio: Faker::Lorem.paragraph)
end