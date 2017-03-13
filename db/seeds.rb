15.times do

  user = User.create!(
  username: Faker::StarWars.character
  )

  rand(1..4).times do
    user.posts.create!(
    body: Faker::Pokemon.location,
    title: Faker::Pokemon.name,
    created_at: rand(1..365).days.ago
    )
  end

end
