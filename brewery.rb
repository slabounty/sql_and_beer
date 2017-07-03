require 'faker'
require 'active_support'
require 'active_support/core_ext'

HIPSTER_THINGS = [
  { brewery: "Big Beard Brewery", city: "Boulder", state: "CO" },
  { brewery: "Flannel Shirt Brewery", city: "San Francisco", state: "CA"},
  { brewery: "Bowler Hat Brewery", city: "Portland", state: "OR"},
  { brewery: "Typewriter Brewery", city: "Brooklyn", state: "NY"},
  { brewery: "Mustache Wax Brewery", city: "San Diego", state: "CA"},
  { brewery: "Ironic Tee Brewery", city: "Seatle", state: "WA"},
  { brewery: "Cassette Tape Brewery", city: "Austin", state: "TX"},
  { brewery: "Long Playing Record Brewery", city: "San Diego", state: "CA"},
  { brewery: "Bow Tie Brewery", city: "Portland", state: "OR"},
  { brewery: "Chucky T Brewery", city: "San Diego", state: "CA"},
]

def established_at
  (rand(5)+1).years.ago + (rand(12)).months + rand(28).days
end

def street_address_1
  Faker::Address.street_address
end

def street_address_2
  Faker::Address.secondary_address
end

HIPSTER_THINGS.each_with_index do |hipster_thing, i|
  puts "INSERT INTO breweries (id, name, address_1, address_2, city, state, zip, established_at)\n  VALUES (\"#{i}\", \"#{hipster_thing[:brewery]}\", \"#{street_address_1}\", \"#{street_address_2}\", \"#{hipster_thing[:city]}\", \"#{hipster_thing[:state]}\", \"#{Faker::Address.zip_code}\", \"#{established_at}\");"
end
