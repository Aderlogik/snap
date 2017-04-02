# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password', role: 'admin', first_name: 'Steve', last_name: 'Beneath', avatar: Rails.root.join("app/assets/images/user-image.jpg").open)
User.create!(email: 'custmer@example.com', password: 'password', password_confirmation: 'password', role: 'user', first_name: 'John', last_name: 'Cena', avatar: Rails.root.join("app/assets/images/user-image.jpg").open)
ExtraService.create!([{name: "Edge of shrub & plant beds to maintain neat appearance"}, {name: "Shrub trimming"}, {name: "Tree pruning"}, {name: "Planting"}, {name: "Plant Health Care"}, {name: "Lawn Health Care"}, {name: "Mulching"}, {name: "Gutter / Gate Cleaning"}, {name: "Clean Up"}, {name: "Power Washing"}])
Plan.create!([{name: "Weekly"}, {name: "Bi-Weekly"}])
Subscription.create!([{name: "Monthly"}, {name: "Quaterly"}, {name: "Half Yearly"}])
