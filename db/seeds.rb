# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

['Ropa y Calzado', 'Alimentos', 'Tecnología', 'Salud', 'Juguetes'].each do |x|
  Category.create(name: x)
end

User.create(email: 'test0@test.com', nickname: 'user0', password: 'testtest', latitude: -34.564090, longitude: -58.479071)

User.create(email: 'test1@test.com', nickname: 'user1', password: 'testtest', latitude: -34.564075, longitude: -58.469277)

User.create(email: 'test2@test.com', nickname: 'user2', password: 'testtest', latitude: -34.607201, longitude: -58.421511)

User.create(email: 'test3@test.com', nickname: 'user3', password: 'testtest', latitude: -34.612640, longitude: -58.413379)

User.create(email: 'test4@test.com', nickname: 'user4', password: 'testtest', latitude: -34.613063, longitude: -58.387973)

User.create(email: 'test5@test.com', nickname: 'user5', password: 'testtest', latitude: -34.562809, longitude: -58.481830)

Donation.create(name: 'A donation', description: 'Some text about that donation',
                requester: User.first, offerer: User.second, state: 0, category: Category.first)
