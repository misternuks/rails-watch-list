# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Warming the syrup...'

Movie.destroy_all

puts 'Contacting Dr. Gemima...'
10.times do
  Movie.create!(
    title: Faker::Movie.title,
    overview: Faker::Marketing.buzzwords,
    poster_url: "https://randommer.io/images/movies/#{rand(11..20)}.jpg",
    rating: rand(0..10).to_f
  )
end
puts 'Oh my god, my waffle!'
