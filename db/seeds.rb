10.times do
  Restaurant.new(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.phone_number,
    category: %w[chinese italian japanese french belgian].sample
  ).save!
  puts "#{Restaurant.count} - #{Restaurant.last} created."
end

puts 'All done!'
