# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Player.create({name: 'David Taylor', email: 'david.taylor5@hp.com', active: true })
Player.create({name: 'Nil Camacho', email: 'nil.camacho.ramonet@hp.com', active: true })
Player.create({name: 'Ruben Infante', email: 'ruben.infante@hp.com', active: true })
Player.create({name: 'Ryan Schreiber', email: 'ryan.schreiber@hp.com', active: true })
Player.create({name: 'Riley Dasch', email: 'riley.dasch@hp.com', active: true })
Player.create({name: 'Sandeep Venkata', email: 'sandeep.venkata@hp.com', active: true })
Player.create({name: 'Noah Collins', email: 'noah.collins@hp.com', active: true })
Player.create({name: 'Daniel De La Garza', email: 'Daniel.de.la.garza@hp.com', active: true })
Player.create({name: 'Erick Romero', email: 'erick.romero@hp.com', active: true })
Player.create({name: 'Paul Min', email: 'paul.min@hp.com', active: false })
Player.create({name: 'Isaac Chan', email: 'isaac.chan1@hp.com', active: true })
Player.create({name: 'David "Thor" Hagan', email: 'david.m.hagan@hp.com', active: true })
Player.create({name: 'Sheena Chen', email: 'sheena@hp.com', active: true })
Player.create({name: 'Bryce Tucker', email: 'bryce.tucker@hp.com', active: true })
Player.create({name: 'Ernest Sliter', email: 'ernest.sliter@hp.com', active: false })
Player.create({name: 'Luke Bockman', email: 'luke.bockman1@hp.com', active: true })
Player.create({name: 'Chris Timbreza', email: 'chris.timbreza@hp.com', active: true })
Player.create({name: 'Marwan elGendy', email: 'Marwan.elgendy@hp.com', active: true })
Player.create({name: 'Arpan Chakraborty', email: 'arpan.chakraborty@hp.com', active: true })
Player.create({name: 'Bryan Ginger', email: 'bryan.goss@hp.com', active: true })
Player.create({name: 'Nicholas Staub', email: 'Nicholas.staub@hp.com', active: true })
Player.create({name: 'Petar Obradovic', email: 'petar.obradovic@hp.com', active: false })
Player.create({name: 'Jake Sahli', email: 'jake.sahli@hp.com', active: true })
Player.create({name: 'Rowdy Webb', email: 'rowdy@hp.com', active: true })
Player.create({name: 'Vlad Shapoval', email: 'vladislav.shapoval@hp.com', active: true })
Player.create({name: 'Devin Uehling', email: 'devin.uehling@hp.com', active: true })
Player.create({name: 'Nate Martin', email: 'nate@hp.com', active: true })
Player.create({name: 'Wayne Lian', email: 'wen-yu.lian@hp.com', active: true })
Player.create({name: 'Bonny James', email: 'boniface.jam.mbuya@hp.com', active: true })
Player.create({name: 'Paul Osborne', email: 'paul.all.osborne@hp.com', active: true })
Player.create({name: 'Dina Sampath', email: 'dinakaran@hp.com', active: true })

Tournament.create({format: 'Unseeded Double Elimination', name: 'Q2 2019 Ping Pong Tournament', start_date: DateTime.parse('2019-03-01T12:00:00'), end_date: DateTime.parse('2019-04-01T12:00:00') })
#matches
# games
# score
Tournament.create({format: 'Seeded Single Elimination Split Skill', name: 'Q3 2019 Ping Pong Tournament', start_date: DateTime.parse('2019-07-01T12:00:00'), end_date: DateTime.parse('2019-09-01T12:00:00') })
#matches
# games
# score
Tournament.create({format: 'Seeded Double Elimination', name: 'Q1 2020 Ping Pong Tournament', start_date: DateTime.parse('2019-11-01T12:00:00'), end_date: DateTime.parse('2019-03-01T12:00:00') })
#matches
# games
# score


