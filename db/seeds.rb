# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

# delete all current test data
Room.delete_all
User.delete_all
Lodging.delete_all
Building.delete_all
MaintenanceRequest.delete_all

# get a random number of buildings
num_buildings = 1+rand(3)
num_buildings.times do |i|
  b = Building.create(name: "Building #{i+1}", street: Faker::Address.street_address, city: Faker::Address.city, postcode: "200#{i}", state: "NSW", country: "AU")
  # get a random number of lodgings for each building
  num_lodings = 1+rand(5)
  num_lodings.times do |j|
    l = Lodging.create(building_id: b.id, code: "#{b.id}0-#{j}")
    # get a random number of rooms for each lodging
    num_rooms = 1+rand(10)
    num_rooms.times do |k|
      r = Room.create(lodging_id: l.id, number: "#{l.id}0-#{k}")
      # randomly assign a person to the room
      person = 1+rand(100)
      if person%2 == 0
        u = User.create(email: Faker::Internet.email, password: "12345678", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, street: Faker::Address.street_address, city: Faker::Address.city, postcode: "2000", state: "NSW", country: "AU", mobile: "0412 123 123", role: "resident")
        r.update_attributes({user: u})
      end
    end
  end
end

# get a test admin and reident to log in with
User.create(email: "admin@test.com", password: "password", first_name: "Test", last_name: "Admin", role: "staff", street: Faker::Address.street_address, city: Faker::Address.city, postcode: "2000", state: "NSW", country: "AU", mobile: "0412 123 123")
User.create(email: "resident@test.com", password: "password", first_name: "Test", last_name: "Resident", role: "resident", street: Faker::Address.street_address, city: Faker::Address.city, postcode: "2000", state: "NSW", country: "AU", mobile: "0412 123 123")

# get a random amount of maintenance requests
m = 1+rand(50)
m.times do |i|
  u = User.order("RANDOM()").first
  MaintenanceRequest.create(user: u, location: Faker::Address.street_address, description: Faker::Lorem.paragraph, status: "incomplete", urgency: "not urgent")
end
