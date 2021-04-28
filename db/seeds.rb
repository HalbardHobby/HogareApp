# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

admin = User.create!(email: "admin@example.com", name: "Admin Example", password: "example")
Admin.create(user: admin)

employee = User.create!(email: "employee@example.com", name: "Employee Example", password: "example")
Employee.create(user: admin)

client = User.create!(email: "client@example.com", name: "Client Example", password: "example")
Client.create(user: admin)
