# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).


require 'csv'  
filename = File.read("/Users/shawnaejohnson/Downloads/Black_Owned_Restaurants.csv")

csv = CSV.parse(filename, :headers => true, encoding:'iso-8859-1')
csv.each do |row|
  Restaurant.create!(row.to_hash)
end

puts "Done seeding!"
