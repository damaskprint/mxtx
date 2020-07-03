namespace :posts do
  desc "Seeds genres"
  task seed_tags: :environment do
    Genre.create!([{
      name: "Rock"
    },
    {
      name: "Blues"
    },
     {
      name: "Punk"
    }])
  end

  desc "Seeds instruments"
  task seed_tags: :environment do
    Instrument.create!([
    { name: "Guitar"},
    { name: "Drums" },
    ])
  end

  desc "Seeds cities"
  task seed_tags: :environment do
    City.create!([
    { name: "San Antonio"},
    { name: "Austin" },
    ])
  end

  desc "Seeds categories"
  task seed_tags: :environment do
    Category.create!([
    { name: "Musicians", url: "Musicians" },
    { name: "Bands", url: "Bands" },
    ])
  end

end
