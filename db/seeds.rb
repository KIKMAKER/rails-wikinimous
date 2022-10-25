# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Clearing DB"
Article.destroy_all

puts "Generating Articles"
100.times do
  Article.create(title: Faker::Cosmere.knight_radiant, content: Faker::TvShows::VentureBros.quote)
end

puts "#{Article.count} articles have been created!"
