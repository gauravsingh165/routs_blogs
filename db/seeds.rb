# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
user  =User.create(
    name:'gaurav',
    email: 'gaurav123@gmail.com',
    age: '22'
)
10.times do |i|
    puts "creating user #{i+1}"
    User.create(
      name: "user #{i+1}",
      email: "user#{i+1}@gmail.com",
      age: "#{20+i}"
    )
  end
  