# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

3.times { |i| Building.create(name: "Building #{i}", street: "#{i} Apple St", city: "Sydeny", postcode: "200#{i}", state: "NSW", country: "AU") }
buildings = Building.all

buildings.each { |b| 10.times { |i| Lodging.create(building_id: b.id, code: "#{b.id}0#{i}") } }
lodgings = Lodging.all

lodgings.each { |l| Room.create(lodging_id: l.id, number: "#{l.id}01")}
rooms = Room.all

rooms.each do |room|
  user = User.create(email: Faker::Internet.email, password: "12345678", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, street: Faker::Address.street_address, city: Faker::Address.city, postcode: "2000", state: "NSW", country: "AU", mobile: "0412 123 123")
  room.update_attributes({user: user})
end

