# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

User.create!(email: 'student@example.com', password: 'Password1', role: :student, first_name: 'Anna', last_name: 'Bąk')
User.create!(email: 'teacher@example.com', password: 'Password1', role: :teacher, first_name: 'Zenon', last_name: 'Kowalski')
User.create!(email: 'admin@example.com', password: 'Password1', role: :admin, first_name: 'Renata', last_name: 'Klucz')
User.create!(email: 'teacher1@example.com', password: 'Password1', role: :teacher, first_name: 'Stanisław', last_name: 'Malarski')
