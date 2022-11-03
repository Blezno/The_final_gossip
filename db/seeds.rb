
require 'faker'

City.destroy_all
User.destroy_all
Gossip.destroy_all
Tag.destroy_all


10.times do
    city = City.create!(
        name: Faker::TvShows::RickAndMorty.location,
        zip_code: Faker::Address.zip_code
    )
end
 

10.times do
    User.create!(
        first_name: Faker::Superhero.name,
        last_name: Faker::Superhero.suffix,
        description: Faker::Superhero.power,
        email: Faker::Superhero.name+"@supermail.com",
        age: rand(6..80),
        city_id: rand(1..10)
    )
end

20.times do
    Gossip.create!(
        title: Faker::TvShows::BrooklynNineNine.character,
        content: Faker::TvShows::BrooklynNineNine.quote,
        user_id: rand(1..10),
    )
end

10.times do
    Tag.create!(
        title: Faker::TvShows::HowIMetYourMother.catch_phrase,
        gossip_id: rand(1..20)
    )
end


puts "THANK YOU SO MUCH BESTO FRIENDO"