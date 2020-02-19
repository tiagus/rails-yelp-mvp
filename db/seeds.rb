puts 'Clean the database...'
Restaurant.destroy_all

puts 'Creating 10 new Restaurants...'
10.times do
  restaurant = Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.phone_number_with_country_code,
    category: ['chinese', 'italian', 'japanese', 'french', 'belgian'].sample
  )
  Review.create!(
    content: Faker::Quote.yoda,
    rating: (0..5).to_a.sample,
    restaurant_id: restaurant.id
  )

  puts "Created restaurant => #{restaurant.name} <="
end
puts 'Done 🙂'
