# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
def update_tournament_player_points(winner: , tournament:)

end

puts "Creating current players"
Player.where( id: 1, name: 'David Taylor', email: 'david.taylor5@hp.com', active: true, points: (0) ).first_or_create
Player.where( id: 2, name: 'Nil Camacho', email: 'nil.camacho.ramonet@hp.com', active: true, points: (0) ).first_or_create
Player.where( id: 3, name: 'Ruben Infante', email: 'ruben.infante@hp.com', active: true, points: (0) ).first_or_create
Player.where( id: 4, name: 'Ryan Schreiber', email: 'ryan.schreiber@hp.com', active: true, points: (0) ).first_or_create
Player.where( id: 5, name: 'Riley Dasch', email: 'riley.dasch@hp.com', active: true, points: (0) ).first_or_create
Player.where( id: 6, name: 'Sandeep Venkata', email: 'sandeep.venkata@hp.com', active: true, points: (0) ).first_or_create
Player.where( id: 7, name: 'Noah Collins', email: 'noah.collins@hp.com', active: true, points: (0) ).first_or_create
Player.where( id: 8, name: 'Daniel De La Garza', email: 'Daniel.de.la.garza@hp.com', active: true, points: (0) ).first_or_create
Player.where( id: 9, name: 'Erick Romero', email: 'erick.romero@hp.com', active: true, points: (0) ).first_or_create
Player.where( id: 10, name: 'Paul Min', email: 'paul.min@hp.com', active: false, points: (0) ).first_or_create
Player.where( id: 11, name: 'Isaac Chan', email: 'isaac.chan1@hp.com', active: true, points: (0) ).first_or_create
Player.where( id: 12, name: 'David "Thor" Hagan', email: 'david.m.hagan@hp.com', active: true, points: (0) ).first_or_create
Player.where( id: 13, name: 'Sheena Chen', email: 'sheena@hp.com', active: true, points: (0) ).first_or_create
Player.where( id: 14, name: 'Bryce Tucker', email: 'bryce.tucker@hp.com', active: true, points: (0) ).first_or_create
Player.where( id: 15, name: 'Ernest Sliter', email: 'ernest.sliter@hp.com', active: false, points: (0) ).first_or_create
Player.where( id: 16, name: 'Luke Bockman', email: 'luke.bockman1@hp.com', active: true, points: (0) ).first_or_create
Player.where( id: 17, name: 'Chris Timbreza', email: 'chris.timbreza@hp.com', active: true, points: (0) ).first_or_create
Player.where( id: 18, name: 'Marwan elGendy', email: 'Marwan.elgendy@hp.com', active: true, points: (0) ).first_or_create
Player.where( id: 19, name: 'Arpan Chakraborty', email: 'arpan.chakraborty@hp.com', active: true, points: (0) ).first_or_create
Player.where( id: 20, name: 'Bryan Ginger', email: 'bryan.goss@hp.com', active: true, points: (0) ).first_or_create
Player.where( id: 21, name: 'Nicholas Staub', email: 'Nicholas.staub@hp.com', active: true, points: (0) ).first_or_create
Player.where( id: 22, name: 'Petar Obradovic', email: 'petar.obradovic@hp.com', active: false, points: (0) ).first_or_create
Player.where( id: 23, name: 'Jake Sahli', email: 'jake.sahli@hp.com', active: true, points: (0) ).first_or_create
Player.where( id: 24, name: 'Rowdy Webb', email: 'rowdy@hp.com', active: true, points: (0) ).first_or_create
Player.where( id: 25, name: 'Vlad Shapoval', email: 'vladislav.shapoval@hp.com', active: true, points: (0) ).first_or_create
Player.where( id: 26, name: 'Devin Uehling', email: 'devin.uehling@hp.com', active: true, points: (0) ).first_or_create
Player.where( id: 27, name: 'Nate Martin', email: 'nate@hp.com', active: true, points: (0) ).first_or_create
Player.where( id: 28, name: 'Wayne Lian', email: 'wen-yu.lian@hp.com', active: true, points: (0) ).first_or_create
Player.where( id: 29, name: 'Bonny James', email: 'boniface.jam.mbuya@hp.com', active: true, points: (0) ).first_or_create
Player.where( id: 30, name: 'Paul Osborne', email: 'paul.all.osborne@hp.com', active: true, points: (0) ).first_or_create
Player.where( id: 31, name: 'Dina Sampath', email: 'dinakaran@hp.com', active: true, points: (0) ).first_or_create
Player.where( id: 32, name: 'Shane Zhao', email: 'UNAVAILABLE', active: false, points: (0) ).first_or_create

puts "Creating archived tournaments and games #1"
Tournament.where( id: 1, format: Tournament::UDE, name: 'Q2 2019 Ping Pong Tournament', start_date: DateTime.parse('2019-03-01T12:00:00'), end_date: DateTime.parse('2019-04-01T12:00:00') ).first_or_create
m = Match.where( id: 1, player_1_id: 15, player_2_id: 22, format: Match::B321, weight: 1, tournament_id: 1 ).first_or_create
g1 = Game.where( id: 1, winner: 15, loser: 22, match_id: m.id ).first_or_create
Score.where( id: 1, winner_points: 21, loser_points: 18, game_id: g1.id ).first_or_create
g2 = Game.where( id: 2, winner: 15, loser: 22, match_id: m.id ).first_or_create
Score.where( id: 2, winner_points: 21, loser_points: 16, game_id: g2.id ).first_or_create

m = Match.where( id: 2, player_1_id: 14, player_2_id: 21, format: Match::B321, weight: 1, tournament_id: 1 ).first_or_create
g1 = Game.where( id: 3, winner: 14, loser: 21, match_id: m.id ).first_or_create
Score.where( id: 3, winner_points: 21, loser_points: 5, game_id: g1.id ).first_or_create
g2 = Game.where( id: 4, winner: 14, loser: 21, match_id: m.id ).first_or_create
Score.where( id: 4, winner_points: 21, loser_points: 14, game_id: g2.id ).first_or_create

m = Match.where( id: 3, player_1_id: 18, player_2_id: 2, format: Match::B321, weight: 1, tournament_id: 1 ).first_or_create
g1 = Game.where( id: 5, winner: 2, loser: 18, match_id: m.id ).first_or_create
Score.where( id: 5, winner_points: 21, loser_points: 9, game_id: g1.id ).first_or_create
g2 = Game.where( id: 6, winner: 2, loser: 18, match_id: m.id ).first_or_create
Score.where( id: 6, winner_points: 21, loser_points: 10, game_id: g2.id ).first_or_create

m = Match.where( id: 4, player_1_id: 1, player_2_id: 15, format: Match::B321, weight: 1, tournament_id: 1 ).first_or_create
g1 = Game.where( id: 7, winner: 1, loser: 15, match_id: m.id ).first_or_create
Score.where( id: 7, winner_points: 21, loser_points: 4, game_id: g1.id ).first_or_create
g2 = Game.where( id: 8, winner: 1, loser: 15, match_id: m.id ).first_or_create
Score.where( id: 8, winner_points: 21, loser_points: 7, game_id: g2.id ).first_or_create

m = Match.where( id: 5, player_1_id: 11, player_2_id: 12, format: Match::B321, weight: 1, tournament_id: 1 ).first_or_create
g1 = Game.where( id: 9, winner: 11, loser: 12, match_id: m.id ).first_or_create
Score.where( id: 9, winner_points: 21, loser_points: 8, game_id: g1.id ).first_or_create
g2 = Game.where( id: 10, winner: 11, loser: 12, match_id: m.id ).first_or_create
Score.where( id: 10, winner_points: 21, loser_points: 12, game_id: g2.id ).first_or_create

m = Match.where( id: 6, player_1_id: 5, player_2_id: 32, format: Match::B321, weight: 1, tournament_id: 1 ).first_or_create
g1 = Game.where( id: 11, winner: 5, loser: 32, match_id: m.id ).first_or_create
Score.where( id: 11, winner_points: 21, loser_points: 15, game_id: g1.id ).first_or_create
g2 = Game.where( id: 12, winner: 32, loser: 5, match_id: m.id ).first_or_create
Score.where( id: 12, winner_points: 21, loser_points: 16, game_id: g2.id ).first_or_create
g3 = Game.where( id: 13, winner: 5, loser: 32, match_id: m.id ).first_or_create
Score.where( id: 13, winner_points: 21, loser_points: 10, game_id: g3.id ).first_or_create

m = Match.where( id: 7, player_1_id: 3, player_2_id: 16, format: Match::B321, weight: 1, tournament_id: 1 ).first_or_create
g1 = Game.where( id: 14, winner: 3, loser: 16, match_id: m.id ).first_or_create
Score.where( id: 14, winner_points: 21, loser_points: 14, game_id: g1.id ).first_or_create
g2 = Game.where( id: 15, winner: 3, loser: 16, match_id: m.id ).first_or_create
Score.where( id: 15, winner_points: 21, loser_points: 9, game_id: g2.id ).first_or_create

m = Match.where( id: 8, player_1_id: 7, player_2_id: 14, format: Match::B321, weight: 1, tournament_id: 1 ).first_or_create
g1 = Game.where( id: 16, winner: 7, loser: 14, match_id: m.id ).first_or_create
Score.where( id: 16, winner_points: 21, loser_points: 2, game_id: g1.id ).first_or_create
g2 = Game.where( id: 17, winner: 7, loser: 14, match_id: m.id ).first_or_create
Score.where( id: 17, winner_points: 21, loser_points: 8, game_id: g2.id ).first_or_create

m = Match.where( id: 9, player_1_id: 4, player_2_id: 19, format: Match::B321, weight: 1, tournament_id: 1 ).first_or_create
g1 = Game.where( id: 18, winner: 4, loser: 19, match_id: m.id ).first_or_create
Score.where( id: 18, winner_points: 21, loser_points: 13, game_id: g1.id ).first_or_create
g2 = Game.where( id: 19, winner: 4, loser: 19, match_id: m.id ).first_or_create
Score.where( id: 19, winner_points: 21, loser_points: 19, game_id: g2.id ).first_or_create

m = Match.where( id: 10, player_1_id: 13, player_2_id: 9, format: Match::B321, weight: 1, tournament_id: 1 ).first_or_create
g1 = Game.where( id: 20, winner: 13, loser: 9, match_id: m.id ).first_or_create
Score.where( id: 20, winner_points: 21, loser_points: 17, game_id: g1.id ).first_or_create
g2 = Game.where( id: 21, winner: 9, loser: 13, match_id: m.id ).first_or_create
Score.where( id: 21, winner_points: 21, loser_points: 17, game_id: g2.id ).first_or_create
g3 = Game.where( id: 22, winner: 9, loser: 13, match_id: m.id ).first_or_create
Score.where( id: 22, winner_points: 21, loser_points: 19, game_id: g3.id ).first_or_create

m = Match.where( id: 11, player_1_id: 8, player_2_id: 2, format: Match::B321, weight: 1, tournament_id: 1 ).first_or_create
g1 = Game.where( id: 23, winner: 2, loser: 8, match_id: m.id ).first_or_create
Score.where( id: 23, winner_points: 21, loser_points: 16, game_id: g1.id ).first_or_create
g2 = Game.where( id: 24, winner: 2, loser: 8, match_id: m.id ).first_or_create
Score.where( id: 24, winner_points: 21, loser_points: 14, game_id: g2.id ).first_or_create

m = Match.where( id: 12, player_1_id: 8, player_2_id: 22, format: Match::B321, weight: 1, tournament_id: 1 ).first_or_create
g1 = Game.where( id: 25, winner: 8, loser: 22, match_id: m.id ).first_or_create
Score.where( id: 25, winner_points: 21, loser_points: 13, game_id: g1.id ).first_or_create
g2 = Game.where( id: 26, winner: 8, loser: 22, match_id: m.id ).first_or_create
Score.where( id: 26, winner_points: 21, loser_points: 8, game_id: g2.id ).first_or_create

m = Match.where( id: 13, player_1_id: 16, player_2_id: 21, format: Match::B321, weight: 1, tournament_id: 1 ).first_or_create
g1 = Game.where( id: 27, winner: 16, loser: 22, match_id: m.id ).first_or_create
Score.where( id: 27, winner_points: 21, loser_points: 15, game_id: g1.id ).first_or_create
g2 = Game.where( id: 28, winner: 16, loser: 22, match_id: m.id ).first_or_create
Score.where( id: 28, winner_points: 25, loser_points: 23, game_id: g2.id ).first_or_create

m = Match.where( id: 14, player_1_id: 18, player_2_id: 15, format: Match::B321, weight: 1, tournament_id: 1 ).first_or_create
g1 = Game.where( id: 29, winner: 15, loser: 18, match_id: m.id ).first_or_create
Score.where( id: 29, winner_points: 21, loser_points: 16, game_id: g1.id ).first_or_create
g2 = Game.where( id: 30, winner: 18, loser: 15, match_id: m.id ).first_or_create
Score.where( id: 30, winner_points: 21, loser_points: 17, game_id: g2.id ).first_or_create
g3 = Game.where( id: 31, winner:18, loser: 15, match_id: m.id ).first_or_create
Score.where( id: 31, winner_points: 21, loser_points: 19, game_id: g3.id ).first_or_create

m = Match.where( id: 15, player_1_id: 8, player_2_id: 13, format: Match::B321, weight: 1, tournament_id: 1 ).first_or_create
g1 = Game.where( id: 32, winner: 8, loser: 13, match_id: m.id ).first_or_create
Score.where( id: 32, winner_points: 21, loser_points: 14, game_id: g1.id ).first_or_create
g2 = Game.where( id: 33, winner: 8, loser: 13, match_id: m.id ).first_or_create
Score.where( id: 33, winner_points: 21, loser_points: 15, game_id: g2.id ).first_or_create

m = Match.where( id: 16, player_1_id: 19, player_2_id: 14, format: Match::B321, weight: 1, tournament_id: 1 ).first_or_create
g1 = Game.where( id: 34, winner: 19, loser: 14, match_id: m.id ).first_or_create
Score.where( id: 34, winner_points: 21, loser_points: 17, game_id: g1.id ).first_or_create
g2 = Game.where( id: 35, winner: 19, loser: 14, match_id: m.id ).first_or_create
Score.where( id: 35, winner_points: 21, loser_points: 9, game_id: g2.id ).first_or_create

m = Match.where( id: 17, player_1_id: 16, player_2_id: 32, format: Match::B321, weight: 1, tournament_id: 1 ).first_or_create
g1 = Game.where( id: 36, winner: 32, loser: 16, match_id: m.id ).first_or_create
Score.where( id: 36, winner_points: 21, loser_points: 17, game_id: g1.id ).first_or_create
g2 = Game.where( id: 37, winner: 16, loser: 32, match_id: m.id ).first_or_create
Score.where( id: 37, winner_points: 21, loser_points: 16, game_id: g2.id ).first_or_create
g3 = Game.where( id: 38, winner:32, loser: 16, match_id: m.id ).first_or_create
Score.where( id: 38, winner_points: 21, loser_points: 16, game_id: g3.id ).first_or_create

m = Match.where( id: 18, player_1_id: 12, player_2_id: 18, format: Match::B321, weight: 1, tournament_id: 1 ).first_or_create
g1 = Game.where( id: 39, winner: 12, loser: 18, match_id: m.id ).first_or_create
Score.where( id: 39, winner_points: 21, loser_points: 11, game_id: g1.id ).first_or_create
g2 = Game.where( id: 40, winner: 18, loser: 12, match_id: m.id ).first_or_create
Score.where( id: 40, winner_points: 22, loser_points: 20, game_id: g2.id ).first_or_create
g3 = Game.where( id: 41, winner:12, loser: 18, match_id: m.id ).first_or_create
Score.where( id: 41, winner_points: 21, loser_points: 12, game_id: g3.id ).first_or_create

m = Match.where( id: 19, player_1_id: 1, player_2_id: 11, format: Match::B321, weight: 1, tournament_id: 1 ).first_or_create
g1 = Game.where( id: 42, winner: 1, loser: 11, match_id: m.id ).first_or_create
Score.where( id: 42, winner_points: 21, loser_points: 10, game_id: g1.id ).first_or_create
g2 = Game.where( id: 43, winner: 1, loser: 11, match_id: m.id ).first_or_create
Score.where( id: 43, winner_points: 21, loser_points: 15, game_id: g2.id ).first_or_create

m = Match.where( id: 20, player_1_id: 5, player_2_id: 3, format: Match::B321, weight: 1, tournament_id: 1 ).first_or_create
g1 = Game.where( id: 44, winner: 3, loser: 5, match_id: m.id ).first_or_create
Score.where( id: 44, winner_points: 22, loser_points: 20, game_id: g1.id ).first_or_create
g2 = Game.where( id: 45, winner: 3, loser: 5, match_id: m.id ).first_or_create
Score.where( id: 45, winner_points: 21, loser_points: 10, game_id: g2.id ).first_or_create

m = Match.where( id: 21, player_1_id: 7, player_2_id: 4, format: Match::B321, weight: 1, tournament_id: 1 ).first_or_create
g1 = Game.where( id: 46, winner: 7, loser: 4, match_id: m.id ).first_or_create
Score.where( id: 46, winner_points: 21, loser_points: 17, game_id: g1.id ).first_or_create
g2 = Game.where( id: 47, winner: 4, loser: 7, match_id: m.id ).first_or_create
Score.where( id: 47, winner_points: 21, loser_points: 4, game_id: g2.id ).first_or_create
g3 = Game.where( id: 48, winner:7, loser: 4, match_id: m.id ).first_or_create
Score.where( id: 48, winner_points: 21, loser_points: 17, game_id: g3.id ).first_or_create

m = Match.where( id: 22, player_1_id: 9, player_2_id: 2, format: Match::B321, weight: 1, tournament_id: 1 ).first_or_create
g1 = Game.where( id: 49, winner: 9, loser: 2, match_id: m.id ).first_or_create
Score.where( id: 49, winner_points: 21, loser_points: 11, game_id: g1.id ).first_or_create
g2 = Game.where( id: 50, winner:2, loser: 9, match_id: m.id ).first_or_create
Score.where( id: 50, winner_points: 21, loser_points: 7, game_id: g2.id ).first_or_create
g3 = Game.where( id: 51, winner:2, loser: 9, match_id: m.id ).first_or_create
Score.where( id: 51, winner_points: 21, loser_points: 16, game_id: g3.id ).first_or_create

m = Match.where( id: 23, player_1_id: 5, player_2_id: 8, format: Match::B321, weight: 1, tournament_id: 1 ).first_or_create
g1 = Game.where( id: 52, winner: 5, loser: 8, match_id: m.id ).first_or_create
Score.where( id: 52, winner_points: 21, loser_points: 18, game_id: g1.id ).first_or_create
g2 = Game.where( id: 53, winner: 5, loser: 8, match_id: m.id ).first_or_create
Score.where( id: 53, winner_points: 21, loser_points: 19, game_id: g2.id ).first_or_create

m = Match.where( id: 24, player_1_id: 11, player_2_id: 19, format: Match::B321, weight: 1, tournament_id: 1 ).first_or_create
g1 = Game.where( id: 54, winner: 11, loser: 19, match_id: m.id ).first_or_create
Score.where( id: 54, winner_points: 21, loser_points: 9, game_id: g1.id ).first_or_create
g2 = Game.where( id: 55, winner:19, loser: 11, match_id: m.id ).first_or_create
Score.where( id: 55, winner_points: 21, loser_points: 16, game_id: g2.id ).first_or_create
g3 = Game.where( id: 56, winner:11, loser: 19, match_id: m.id ).first_or_create
Score.where( id: 56, winner_points: 21, loser_points: 14, game_id: g3.id ).first_or_create

m = Match.where( id: 25, player_1_id: 9, player_2_id: 32, format: Match::B321, weight: 1, tournament_id: 1 ).first_or_create
g1 = Game.where( id: 57, winner: 9, loser: 32, match_id: m.id ).first_or_create
Score.where( id: 57, winner_points: 21, loser_points: 17, game_id: g1.id ).first_or_create
g2 = Game.where( id: 58, winner:32, loser: 9, match_id: m.id ).first_or_create
Score.where( id: 58, winner_points: 21, loser_points: 17, game_id: g2.id ).first_or_create
g3 = Game.where( id: 59, winner:9, loser: 32, match_id: m.id ).first_or_create
Score.where( id: 59, winner_points: 21, loser_points: 19, game_id: g3.id ).first_or_create

m = Match.where( id: 26, player_1_id: 4, player_2_id: 12, format: Match::B321, weight: 1, tournament_id: 1 ).first_or_create
g1 = Game.where( id: 60, winner: 4, loser: 12, match_id: m.id ).first_or_create
Score.where( id: 60, winner_points: 21, loser_points: 16, game_id: g1.id ).first_or_create
g2 = Game.where( id: 61, winner: 4, loser: 12, match_id: m.id ).first_or_create
Score.where( id: 61, winner_points: 21, loser_points: 19, game_id: g2.id ).first_or_create

m = Match.where( id: 27, player_1_id: 5, player_2_id: 11, format: Match::B321, weight: 1, tournament_id: 1 ).first_or_create
g1 = Game.where( id: 62, winner: 5, loser: 11, match_id: m.id ).first_or_create
Score.where( id: 62, winner_points: 21, loser_points: 16, game_id: g1.id ).first_or_create
g2 = Game.where( id: 63, winner: 5, loser: 11, match_id: m.id ).first_or_create
Score.where( id: 63, winner_points: 21, loser_points: 15, game_id: g2.id ).first_or_create

m = Match.where( id: 28, player_1_id: 9, player_2_id: 4, format: Match::B321, weight: 1, tournament_id: 1 ).first_or_create
g1 = Game.where( id: 64, winner: 4, loser: 9, match_id: m.id ).first_or_create
Score.where( id: 64, winner_points: 21, loser_points: 17, game_id: g1.id ).first_or_create
g2 = Game.where( id: 65, winner: 4, loser: 9, match_id: m.id ).first_or_create
Score.where( id: 65, winner_points: 25, loser_points: 23, game_id: g2.id ).first_or_create

m = Match.where( id: 29, player_1_id: 1, player_2_id: 3, format: Match::B321, weight: 1, tournament_id: 1 ).first_or_create
g1 = Game.where( id: 66, winner: 1, loser: 3, match_id: m.id ).first_or_create
Score.where( id: 66, winner_points: 21, loser_points: 10, game_id: g1.id ).first_or_create
g2 = Game.where( id: 67, winner: 1, loser: 3, match_id: m.id ).first_or_create
Score.where( id: 67, winner_points: 21, loser_points: 12, game_id: g2.id ).first_or_create

m = Match.where( id: 30, player_1_id: 7, player_2_id: 2, format: Match::B321, weight: 1, tournament_id: 1 ).first_or_create
g1 = Game.where( id: 68, winner: 2, loser: 7, match_id: m.id ).first_or_create
Score.where( id: 68, winner_points: 21, loser_points: 12, game_id: g1.id ).first_or_create
g2 = Game.where( id: 69, winner: 2, loser: 7, match_id: m.id ).first_or_create
Score.where( id: 69, winner_points: 21, loser_points: 6, game_id: g2.id ).first_or_create

m = Match.where( id: 31, player_1_id: 3, player_2_id: 5, format: Match::B321, weight: 1, tournament_id: 1 ).first_or_create
g1 = Game.where( id: 70, winner: 3, loser: 5, match_id: m.id ).first_or_create
Score.where( id: 70, winner_points: 21, loser_points: 10, game_id: g1.id ).first_or_create
g2 = Game.where( id: 71, winner: 3, loser: 5, match_id: m.id ).first_or_create
Score.where( id: 71, winner_points: 21, loser_points: 18, game_id: g2.id ).first_or_create

m = Match.where( id: 32, player_1_id: 7, player_2_id: 4, format: Match::B321, weight: 1, tournament_id: 1 ).first_or_create
g1 = Game.where( id: 72, winner: 4, loser: 7, match_id: m.id ).first_or_create
Score.where( id: 72, winner_points: 21, loser_points: 12, game_id: g1.id ).first_or_create
g2 = Game.where( id: 73, winner:7, loser: 4, match_id: m.id ).first_or_create
Score.where( id: 73, winner_points: 21, loser_points: 18, game_id: g2.id ).first_or_create
g3 = Game.where( id: 74, winner:7, loser: 4, match_id: m.id ).first_or_create
Score.where( id: 74, winner_points: 23, loser_points: 21, game_id: g3.id ).first_or_create

m = Match.where( id: 33, player_1_id: 3, player_2_id: 7, format: Match::B321, weight: 1, tournament_id: 1 ).first_or_create
g1 = Game.where( id: 75, winner: 3, loser: 7, match_id: m.id ).first_or_create
Score.where( id: 75, winner_points: 21, loser_points: 13, game_id: g1.id ).first_or_create
g2 = Game.where( id: 76, winner: 3, loser: 7, match_id: m.id ).first_or_create
Score.where( id: 76, winner_points: 21, loser_points: 14, game_id: g2.id ).first_or_create

m = Match.where( id: 34, player_1_id: 1, player_2_id: 2, format: Match::B321, weight: 1, tournament_id: 1 ).first_or_create
g1 = Game.where( id: 77, winner: 1, loser: 2, match_id: m.id ).first_or_create
Score.where( id: 77, winner_points: 21, loser_points: 7, game_id: g1.id ).first_or_create
g2 = Game.where( id: 78, winner: 1, loser: 2, match_id: m.id ).first_or_create
Score.where( id: 78, winner_points: 21, loser_points: 12, game_id: g2.id ).first_or_create

m = Match.where( id: 35, player_1_id: 2, player_2_id: 3, format: Match::B321, weight: 1, tournament_id: 1 ).first_or_create
g1 = Game.where( id: 79, winner: 2, loser: 3, match_id: m.id ).first_or_create
Score.where( id: 79, winner_points: 21, loser_points: 16, game_id: g1.id ).first_or_create
g2 = Game.where( id: 80, winner: 2, loser: 3, match_id: m.id ).first_or_create
Score.where( id: 80, winner_points: 21, loser_points: 7, game_id: g2.id ).first_or_create

m = Match.where( id: 36, player_1_id: 1, player_2_id: 2, format: Match::B321, weight: 1, tournament_id: 1 ).first_or_create
g1 = Game.where( id: 81, winner: 2, loser: 1, match_id: m.id ).first_or_create
Score.where( id: 81, winner_points: 21, loser_points: 17, game_id: g1.id ).first_or_create
g2 = Game.where( id: 82, winner: 2, loser: 1, match_id: m.id ).first_or_create
Score.where( id: 82, winner_points: 21, loser_points: 18, game_id: g2.id ).first_or_create

m = Match.where( id: 37, player_1_id: 1, player_2_id: 2, format: Match::B321, weight: 1, tournament_id: 1 ).first_or_create
g1 = Game.where( id: 83, winner: 2, loser: 1, match_id: m.id ).first_or_create
Score.where( id: 83, winner_points: 21, loser_points: 19, game_id: g1.id ).first_or_create
g2 = Game.where( id: 84, winner: 1, loser: 2, match_id: m.id ).first_or_create
Score.where( id: 84, winner_points: 21, loser_points: 18, game_id: g2.id ).first_or_create
g3 = Game.where( id: 85, winner:1, loser: 2, match_id: m.id ).first_or_create
Score.where( id: 85, winner_points: 21, loser_points: 12, game_id: g3.id ).first_or_create

update_tournament_player_points(winner: Match.last.winner, tournament: Tournament.last)

#---------------------------------------------------------------------------------------------------------------#

puts "Creating archived tournaments and games #2"
Tournament.where( id: 2, format: Tournament::SSES, name: 'Q4 2019 Ping Pong Tournament', start_date: DateTime.parse('2019-07-01T12:00:00'), end_date: DateTime.parse('2019-09-01T12:00:00') ).first_or_create
# m = Match.where( id: 39, player_1_id: 20, player_2_id: 14, format: Match::B321, weight: 2, tournament_id: 2 ).first_or_create
# Game.where( id: 87, winner: 14, loser: 20, match_id: m.id ).first_or_create
# matches
# games
# score
#
puts "Creating archived tournaments and games #2"
Tournament.where( id: 3, format: Tournament::SDE, name: 'Q1 2020 Ping Pong Tournament', start_date: DateTime.parse('2019-11-01T12:00:00'), end_date: DateTime.parse('2019-03-01T12:00:00') ).first_or_create
#matches
# games
# score
