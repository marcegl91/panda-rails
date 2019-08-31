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

User.create(email: 'test@test.com', nickname: 'user1', password: 'testtest')
User.create(email: 'test1@test.com', nickname: 'user2', password: 'testtest')

Donation.create(name: 'A donation', description: 'Some text about that donation',
                requester: User.first, offerer: User.second, state: 0)
