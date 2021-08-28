# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
u = User.create(name: "Randy Layne", title: "Sofware Developer", username: ENV["USER_USERNAME"],password: ENV["USER_PASSWORD"])
p = Profile.create(
  name: "Randy Layne",
  location: "Lynchburg, VA. USA",
  age: 43,
  quote: "Good software, like wine, takes time.",
  quote_author: "Joel Spolsky",
  user_id: u.id,
  is_published: true,
  about_me: "I'm a Ruby on Rails developer with an insatiable thirst for learning more about software development, including other languages."
)

