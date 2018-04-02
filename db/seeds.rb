# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

peru = Country.find_or_create_by!({name: 'Peru', continent: 'South America', costs: '2/5', tips: 'have fun and stuff'}) 
myanmar = Country.find_or_create_by!({name: 'Myanmar', continent: "Asia", costs: "2/5", tips: "do stuff"})
philipines = Country.find_or_create_by!({name: 'Philippines', continent: 'Asia', costs: '2/5', tips: "go to the beach"})
kenya = Country.find_or_create_by!({name: "Kenya", continent: "Africa", costs: "4/5", tips: "avoid scams"})

cuzco = Destination.find_or_create_by!(name: "Cuzco", country_id: peru.id, what_to_do: "go for a walk")
bagan = Destination.find_or_create_by!(name: "Bagan", country_id: myanmar.id, what_to_do: "look at temples")
el_nido = Destination.find_or_create_by!(name: "EL Nido", country_id: philipines.id, what_to_do: "swim")
nairobi = Destination.find_or_create_by!(name: "Nairobi", country_id: kenya.id, what_to_do: "look at animals")