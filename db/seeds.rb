# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.delete_all
Afiliation.delete_all

User.create(name: "paul", username: "paul", password: "password", email: "paul@yahoo.com")

thundercats = Afiliation.create(name: "Thundercats")
lunataks = Afiliation.create(name: "Lunataks")
mutants = Afiliation.create(name: "Mutant")

