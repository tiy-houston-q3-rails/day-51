# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

NicePerson.destroy_all

anders = NicePerson.create(name: "Anders", city: "Boston", hair: "blond", age: 59)
bob = NicePerson.create(name: "Bob", city: "Houston", hair: "None", age: 61)
