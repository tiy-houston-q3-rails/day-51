require './nice_person'

anders = NicePerson.create(name: "Anders", city: "Houston", hair: "blond", age: 59)
bob = NicePerson.create(name: "Bob", city: "Houston", hair: "None", age: 61)

puts bob.greet anders, "Sup"

NicePerson.all.each do |person|
  puts person.name
end
