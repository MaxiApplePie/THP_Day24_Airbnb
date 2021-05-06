# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "faker"
Dog.destroy_all
DogSitter.destroy_all
City.destroy_all
Stroll.destroy_all

30.times do |c|
  City.create(city_name: Faker::Address.city)
end

20.times do |index|
  ville = City.ids.sample
  Dog.create(dog_name: Faker::Creature::Dog.name,
             city_id: ville)
  DogSitter.create(sitter_name: Faker::Name.name,
                   city_id: ville)
  Stroll.create(dog_id: Dog.ids.sample,
                dog_sitter_id: DogSitter.ids.sample)
end
