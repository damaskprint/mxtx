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

  
 end
