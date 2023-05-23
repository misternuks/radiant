# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Inserting the breakfast pastry...'
Encounter.destroy_all
TargetGroup.destroy_all
Target.destroy_all
Player.destroy_all
Campaign.destroy_all
User.destroy_all

puts 'Contact Dr. Jemima...'
count = 0
2.times do
  User.create!(
    email: Faker::Internet.email,
    password: "123456",
    username: Faker::Internet.username
  )
  puts count += 1
end

puts 'God, I love the blueberry ones best...'
count = 0
4.times do
  Campaign.create!(
    world_name: Faker::Fantasy::Tolkien.location,
    world_biome: %w[forest desert jungle plains cavern tundra city].sample,
    world_mood: %w[comedic romantic dark epic medieval high].sample,
    world_weather: %w[clear cloudy rainy snowy windy stormy].sample,
    user: User.all.sample
  )
  puts count += 1
end

puts 'Start warming the syrup...'
count = 0
16.times do
  Player.create!(
    player_name: Faker::Name.first_name,
    character_name: Faker::Fantasy::Tolkien.character,
    character_class: %w[barbarian paladin mage ranger bard cleric rogue druid].sample,
    campaign: Campaign.all.sample
  )
  puts count += 1
end

puts 'Yum...'
count = 0
20.times do
  Target.create!(
    name: Faker::Fantasy::Tolkien.race
  )
  puts count += 1
end

puts 'Increase the Flash Gordon noise and put more science stuff around...'

puts 'Oh my god, my waffle!'
