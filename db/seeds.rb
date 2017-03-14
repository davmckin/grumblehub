15.times do
  user = User.create!(
    username: Faker::StarWars.character,
    avatar: Faker::Avatar.image('my-own-slug', '50x50', 'jpg'),
    password: Faker::Pokemon.name
  )

  rand(1..4).times do
    user.posts.create!(
      body: "Bacon ipsum dolor amet pork belly picanha meatball landjaeger leberkas. Short loin tenderloin turducken venison ribeye tail. Swine chuck tongue cow hamburger. Drumstick salami turducken biltong meatball ground round boudin alcatra leberkas prosciutto hamburger.
            Flank tongue sirloin drumstick shankle shoulder capicola burgdoggen jerky turkey. Ham cupim pancetta hamburger turducken picanha porchetta pastrami. Jerky brisket fatback pork loin cupim shoulder. Pastrami jerky burgdoggen, flank doner prosciutto landjaeger short loin ham. Ribeye kielbasa doner, pancetta frankfurter swine pork loin boudin landjaeger pastrami tri-tip ham.
            Short ribs pancetta capicola leberkas short loin pig t-bone beef ribs doner flank venison. Chuck andouille boudin, pork belly tongue strip steak rump chicken biltong kevin short loin picanha t-bone venison. Corned beef salami pork belly pork loin, pastrami doner fatback. Short ribs ham kielbasa beef. Tail burgdoggen brisket bresaola porchetta shankle. Salami biltong meatball chuck drumstick fatback flank swine doner shank.",
      title: Faker::Pokemon.name,
      created_at: rand(1..365).days.ago,
      picture: Faker::Avatar.image
    )
  end
end
