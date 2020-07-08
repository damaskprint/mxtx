namespace :posts do
  desc "Seeds genres"
  task seed_tags: :environment do
    Genre.create!([
    {name: "Alternative"},
    {name: "Blues"},
    {name: "Classical"},
    {name: "Jazz"},
    {name: "Country"},
    {name: "Electronic"},
    {name: "Cultural"},
    {name: "Pop/Dance"},
    {name: "Rap/R&B"},
    {name: "Metal"},
    {name: "Punk/Rockabilly"},
    {name: "Goth/Post-Punk"},
    {name: "funk/Raggae"},
    {name: "Indie/Shoegaze"},
    {name: "Other"},
    ])
  end

  desc "Seeds instruments"
  task seed_tags: :environment do
    Instrument.create!([
    { name: "Lead/Rythm Guitar"},
    { name: "Bass Guitar"},
    { name: "Vocals"},
    { name: "Drums/Percussion"},
    { name: "Synth"},
    { name: "acoustic"},
    { name: "Brass/classical"},
    { name: "Piano"},
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
