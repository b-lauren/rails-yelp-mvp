puts 'destroying old restaurants'
Restaurant.destroy_all

50.times do
  Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.cell_phone_in_e164,
    category: ['chinese', 'italian', 'japanese', 'french', 'belgian'].sample
  )
end

puts 'Finished!'
