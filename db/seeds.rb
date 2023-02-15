require 'faker'

puts 'Cleaning the DB..'
Restaurant.destroy_all

puts 'Creating restaurants...'
12.times do
  Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.cell_phone,
    category: Restaurant::CATEGORY.sample
  )
end
puts "... created #{Restaurant.count} restaurants."
