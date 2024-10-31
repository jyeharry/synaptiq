# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

jamie = Employee.create(name: "Jamie", id: 150)
alan = Employee.create(name: "Alan", id: 100)
martin = Employee.create(name: "Martin", id: 220)
alex = Employee.create(name: "Alex", id: 275)
steve = Employee.create(name: "Steve", id: 400)
david = Employee.create(name: "David", id: 190)

jamie.employees << alan
alan.employees << martin
alan.employees << alex
jamie.employees << steve
steve.employees << david
