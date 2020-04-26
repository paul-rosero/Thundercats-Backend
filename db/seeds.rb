# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.delete_all
Afiliation.delete_all

paul = User.create(name: "paul", username: "paul", password: "password", email: "paul@yahoo.com")

thundercats = Afiliation.create(name: "Thundercats")
lunataks = Afiliation.create(name: "Lunataks")
mutants = Afiliation.create(name: "Mutant")

lion_o = Character.create(name: "Lion-O", gender: "male", weapons: "Sword of Omens, Claw Shield", species: "Thunderian", overview: "The hereditary Lord of the ThunderCats, Lion-O is the son of Claudus, the ruler of Thundera at the time of its destruction. Initially a boy stuck in a man’s body, the years saw Lion-O develop the wisdom and skills needed to lead the ThunderCats on Third Earth, and later lead the rebuilding of his home world of New Thundera. Lion-O can be quick to anger, and is impulsive and headstrong, but also possesses great moral values, at the forefront of those being the Code of Thundera – Justice, Truth, Honour, and Loyalty. Lion-O is fierce defender of freedom and a brave and noble leader, one that the other ThunderCats are proud to stand beside.", favorite: false, user: paul, afiliation: thundercats)