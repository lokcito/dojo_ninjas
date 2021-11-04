# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# bin/rails db:seed
#tarea 1 de consola CodingDojo
Ninja.where(dojo_id: 1).destroy_all
Dojo.where(id: 1).destroy_all

Ninja.where(dojo_id: 2).destroy_all
Dojo.where(id: 2).destroy_all

Ninja.where(dojo_id: 3).destroy_all
Dojo.where(id: 3).destroy_all
puts "Tarea 1. Hecho."

#Tarea 2
h = Dojo.new
h.name = "Dojo 1"
h.city = "Santiago"
h.state = "AH"
h.save

h = Dojo.new
h.name = "Dojo 2"
h.city = "Santiago"
h.state = "AH"
h.save

h = Dojo.new
h.name = "Dojo 3"
h.city = "Santiago"
h.state = "AH"
h.save

puts "Tarea 2. Hecho."

#Tarea 3
dojo = Dojo.new
dojo.save
puts dojo.errors.messages
puts "Tarea 3. Hecho."

#Tarea 4
n = Ninja.new
n.first_name = "Ninja 1"
n.last_name = "Ninja N 1"
n.dojo = Dojo.where(name: "Dojo 1").first
n.save

n = Ninja.new
n.first_name = "Ninja 2"
n.last_name = "Ninja N 2"
n.dojo = Dojo.where(name: "Dojo 1").first
n.save

n = Ninja.new
n.first_name = "Ninja 3"
n.last_name = "Ninja N 3"
n.dojo = Dojo.where(name: "Dojo 1").first
n.save

n = Ninja.new
n.first_name = "Ninja 4"
n.last_name = "Ninja N 4"
n.dojo = Dojo.where(name: "Dojo 2").first
n.save

n = Ninja.new
n.first_name = "Ninja 5"
n.last_name = "Ninja N 5"
n.dojo = Dojo.where(name: "Dojo 2").first
n.save

n = Ninja.new
n.first_name = "Ninja 6"
n.last_name = "Ninja N 6"
n.dojo = Dojo.where(name: "Dojo 2").first
n.save

n = Ninja.new
n.first_name = "Ninja 7"
n.last_name = "Ninja N 7"
n.dojo = Dojo.where(name: "Dojo 3").first
n.save

n = Ninja.new
n.first_name = "Ninja 8"
n.last_name = "Ninja N 8"
n.dojo = Dojo.where(name: "Dojo 3").first
n.save

n = Ninja.new
n.first_name = "Ninja 9"
n.last_name = "Ninja N 9"
n.dojo = Dojo.where(name: "Dojo 3").first
n.save

puts "Tarea 4, 5, 6. Hecho."
puts "Ninjas: #{Ninja.all.count}"
#Tarea 7
# Find, require el ID
# Where, requiere cualquier parametro
# Where siempre retorna array
puts Dojo.where(name: "Dojo 1").first.ninja
puts "Tarea 7. Hecho."

#Tarea 8
# Id, Created_at, Updated_at
puts Dojo.where(name: "Dojo 2").
  first.ninja.order("created_at desc").
  pluck(:first_name)

puts "Tarea 8. Hecho."

#Tarea 9
puts "Antes: #{Dojo.where(name: "Dojo 2").count}"

Dojo.where(name: "Dojo 2").first.destroy

puts "Despues: #{Dojo.where(name: "Dojo 2").count}"

puts "Tarea 9. Hecho."

