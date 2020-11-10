50.times do
  Pet.create(
    name: Faker::JapaneseMedia::DragonBall.character,
    species: ['cat', 'dog', 'bird', 'mouse'].sample,
    address: Faker::Address.street_address,
    date_found: Date.today
  )
end
