# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).


require 'csv'  
filename = "/Users/shawnaejohnson/Development/Spotz_React/backend/assets/Black_Owned_Restaurants.csv"

csv = CSV.parse(filename, :headers => true)
csv.each do |row|
  Restaurant.create!(row.to_hash)
end

puts "done seeding!"