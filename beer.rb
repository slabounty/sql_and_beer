require 'faker'
require 'active_support'
require 'active_support/core_ext'

class Beer
  attr_reader :id, :brewery_id

  @@beer_id = 0

  TYPES = [
    "Imperial Pale Ale",
    "Stout",
    "Porter",
    "Red Ale",
    "Lager",
    "Pilsner",
    "Ale",
    "Wheat Beer",
    "Bitter",
    "Barley Wine"
  ]

  FAKERS = [
    { faker: Faker::Ancient, generators: [:god, :hero] },
    { faker: Faker::LordOfTheRings, generators: [:character, :location] },
    { faker: Faker::Superhero, generators: [:name] },
    { faker: Faker::StarWars, generators: [:character] },
  ]

  def initialize(brewery_id)
    @brewery_id = brewery_id
    @id = @@beer_id
    @@beer_id += 1
  end

  def type
    @type ||= TYPES.sample
  end

  def name
    @name ||= faker[:faker].send(faker[:generators].sample)
  end

  def faker
    @faker ||= FAKERS.sample
  end

  def average_cost
    @average_cost ||= rand(5.0...9.0).round(2)
  end

  def lowest_cost
    @lowest_cost ||= average_cost - rand(0.25...0.75)
  end

  def highest_cost
    @highest_cost ||= average_cost + rand(0.25...0.75)
  end

  def introduced_at
    @introduced_at ||= (rand(5)+1).years.ago + (rand(12)).months + rand(28).days
  end
end

(0..9).each do |brewery_id|
  (0..rand(5)+2).each do
    beer = Beer.new(brewery_id)
    puts "INSERT INTO beers (id, brewery_id, name, type, average_cost, lowest_cost, highest_cost, introduced_at)\n VALUES (\"#{beer.id}\", \"#{beer.brewery_id}\", \"#{beer.name}\", \"#{beer.type}\", \"#{beer.average_cost.round(2)}\", \"#{beer.lowest_cost.round(2)}\", \"#{beer.highest_cost.round(2)}\", \"#{beer.introduced_at}\");"
  end
end
