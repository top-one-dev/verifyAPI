# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
u1 = User.create(email: 'user@example.com', password: 'password', name:'user')

# p1 = u1.personal_infos.create(body: 'a title post')
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')