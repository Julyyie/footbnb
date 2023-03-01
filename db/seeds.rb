# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "faker"

# Créer des utilisateurs
# user1 = etc

puts "start"
puts "start seeding users"
10.times do
  User.create!(
    first_name: Faker::Name.first_name,
    last_name:  Faker::Name.last_name,
    email: Faker::Internet.email,
    password: "mdpmdp"
  )
end
puts "finish seeds user"

puts "start seeding players"

30.times do
  name = Faker::Sports::Football.player
  player = Player.find_by(name: name)

  if player.nil?
    Player.create!(name: Faker::Sports::Football.player, rating: rand(50..100),
                  club: Faker::Sports::Football.team, position: Faker::Sports::Football.position,
                  age: rand(16..40), strong_foot: ["left foot", "right foot"].sample, user: User.all.sample,

                  # player_photo: player_path = Rails.root.join('public', 'images')
                  # player_01 = File.open(player_path)
                  # PlayerModel.create(image: player_01)
                )
  end
end
puts "finish seeds players"
puts "ALL DONE"


# user_id: user1.id
#il faut affecter un id aux cards(players), de manière à ce qu'un user sois rattacher à plusierus cards_id(relation one to many)
