# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

buildings = Building.create([{name: "Davey", street: "1 Apple St", city: "Sydney", postcode: "2000", state: "NSW", country: "AU"}, {name: "Hamster", street: "2 Apple St", city: "Sydney", postcode: "2000", state: "NSW", country: "AU"}, {name: "Chantelle", street: "3 Apple St", city: "Sydney", postcode: "2000", state: "NSW", country: "AU"}])

lodgings = Lodging.create([{id: 1, building_id: 2, code: 101}, {id: 2, building_id: 1, code: 102}, {id: 3, building_id: 1, code: 103}, {id: 4, building_id: 1, code: 104}, {id: 5, building_id: 1, code: 105}, {id: 6, building_id: 1, code: 201}, {id: 7, building_id: 1, code: 202}, {id: 8, building_id: 1, code: 203}, {id: 9, building_id: 1, code: 204}, {id: 10, building_id: 1, code: 205}, {id: 11, building_id: 2, code: 101}, {id: 12, building_id: 2, code: 102}, {id: 13, building_id: 2, code: 103}, {id: 14, building_id: 2, code: 104}, {id: 15, building_id: 2, code: 105}, {id: 16, building_id: 2, code: 201}, {id: 17, building_id: 2, code: 202}, {id: 18, building_id: 2, code: 203}, {id: 19, building_id: 2, code: 204}, {id: 20, building_id: 2, code: 205}, {id: 21, building_id: 3, code: 101}, {id: 22, building_id: 3, code: 102}, {id: 23, building_id: 3, code: 103}, {id: 24, building_id: 3, code: 104}, {id: 25, building_id: 3, code: 105}, {id: 26, building_id: 3, code: 201}, {id: 27, building_id: 3, code: 202}, {id: 28, building_id: 3, code: 203}, {id: 29, building_id: 3, code: 204}, {id: 30, building_id: 3, code: 205}])

rooms = lodgings.each { |lodging| Room.create(lodging_id: lodging.id, number: "#{lodging.id}")} }





