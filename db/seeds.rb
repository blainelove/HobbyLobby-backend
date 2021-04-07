# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


user1 = User.create(name: "Bob", email:"bob@bob.com", image:"imagehere")

hobby1 = Hobby.create(user_id: user1.id, name:"fishihng", description:"throw hooks at fish", image:"a fish")
hobby2 = Hobby.create(user_id: user1.id, name:"ducking", description:"shoot ducks", image:"a duck")

thought1 = Thought.create(user_id: user1.id, hobby_id: hobby1.id, likes: 1, description: "i went fishing once", image: "wee a fish")
thought1 = Thought.create(user_id: user1.id, hobby_id: hobby2.id, likes: 1, description: "i went dcuking once", image: "a duck flying")