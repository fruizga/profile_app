# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(email: "pepgril@pepmail.com", username: "pepgril", firstname: "Pepe", lastname: "Grillo", bio: "I am the most powerful insect", linkedin:"https://linkedin.com/in/pepgril", twitter: "https://twitter.com/pepgril")
User.create(email: "juancha@pepmail.com", username: "juancha", firstname: "Juan", lastname: "Charrasqueado", bio: "Voy a cantarles un corrido muy mentado", linkedin:"https://linkedin.com/in/juancha", twitter: "https://twitter.com/juancha")
