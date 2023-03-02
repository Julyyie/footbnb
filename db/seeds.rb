# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "faker"

# Créer des utilisateurs
# user1 = etc

Player.destroy_all
User.destroy_all

puts "start"
puts "start creating users & players"
# 10.times do
#   User.create!(
#     first_name: Faker::Name.first_name,
#     last_name:  Faker::Name.last_name,
#     email: Faker::Internet.email,
#     password: "mdpmdp"
#   )
# end
# puts "finish seeds user"

# puts "start seeding players"

# 30.times do
#   name = Faker::Sports::Football.player
#   player = Player.find_by(name: name)

#   if player.nil?
#     Player.create!(name: Faker::Sports::Football.player, rating: rand(50..100),
#                   club: Faker::Sports::Football.team, position: Faker::Sports::Football.position,
#                   age: rand(16..40), strong_foot: ["left foot", "right foot"].sample, user: User.all.sample,
#                 )
#   end
# end

user1 = User.create!(first_name: "Mehdi", last_name: "Sabil", email: "mehdi.sabil@hotmail.com", password: "mdpmdp")
user2 = User.create!(first_name: "Julie", last_name: "Juillet", email: "julie.juillet@hotmail.com", password: "mdpmdp")
user3 = User.create!(first_name: "Edouardo", last_name: "Vitamine",email: "edouardo.vitamine@hotmail.com", password: "mdpmdp")
user4 = User.create!(first_name: "Xavier", last_name: "Niel", email: "xavier.niel@hotmail.com", password: "mdpmdp")

player1 = Player.create!(name: "Lionel Messi", rating: 96, price: 980, club: "PSG", position: "Striker", age: 38, strong_foot: "Left", user: User.all.sample, description: "Probably the best player of all time ")
player2 = Player.create!(name: "Cristiano Ronaldo", rating: 96, price: 980, club: "Al-Nasr", position: "Striker", age: 38, strong_foot: "Right", user: User.all.sample, description: "The guy is a machine")
player3 = Player.create!(name: "Pixie Habousha", rating: 99, price: 990, club: "PIXIE FC", position: "Striker", age: 27, strong_foot: "Right", user: User.all.sample, description: "Definitely the best female player of all time ")
player4 = Player.create!(name: "Killian Mbappé", rating: 95, price: 970, club: "PSG", position: "Striker", age: 24, strong_foot: "Right", user: User.all.sample, description: "Young French prodigy")
player5 = Player.create!(name: "Yassine Bono", rating: 89, price: 680, club: "Seville FC", position: "Goalkeeper", age: 28, strong_foot: "Left", user: User.all.sample, description: "Moroccan goalkeeper who shone during the 2022 Worldcup")
player6 = Player.create!(name: "Paul Pogba", rating: 88, price: 810, club: "Juventus", position: "Midfielder", age: 29, strong_foot: "Right", user: User.all.sample, description: "French metronome, amazing passes and skill")
player7 = Player.create!(name: "Pedri", rating: 91, price: 760, club: "FC Barcelona", position: "Midfielder", age: 25, strong_foot: "Left", user: User.all.sample, description: "Spanish talent, can change the game in one acceleration")
player8 = Player.create!(name: "Erling Haaland", rating: 94, price: 910, club: "Manchester City", position: "Striker", age: 22, strong_foot: "Left", user: User.all.sample, description: "Norwegian machine. Dude is a beast. Your opponents will be terrified.")
player9 = Player.create!(name: "Diane", rating: 96, price: 1000, club: "Wagon FC", position: "ALL", age: 29, strong_foot: "Left", user: User.all.sample, description: "No comment. She codes the games before they happen. Your best asset.")

puts "finish seeds users & players"
puts "ALL DONE"



# user_id: user1.id
#il faut affecter un id aux cards(players), de manière à ce qu'un user sois rattacher à plusierus cards_id(relation one to many)
