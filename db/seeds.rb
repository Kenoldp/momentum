# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
[
  ['Erik', 'erik@momentum.io'],
  ['Gesi', 'gesi@momentum.io'],
  ['Chris', 'chris@momentum.io'],
  ['Jurgen', 'jurgen@momentum.io']
].each do |username, email|
  User.create(username: username, email: email,
              password: 'secretpwd', password_confirmation: 'secretpwd')
end

places = Place.create(
  [
    {
      name: 'Prince Street Pizza',
      description: 'Best pizza ever!  Get the "Special"',
      longitude: 151.199025,
      latitude: -33.870775,
      neighborhood: 'Soho',
      city: 'New York City',
      country: 'USA',
      google_place_id: 'ChIJ6xvs94VZwokRnT1D2lX2OTw'
    },
    {
      name: 'Best Pizza',
      description: 'Really the best',
      longitude: 40.7121463,
      latitude: -73.965175,
      neighborhood: 'Williamsburg',
      city: 'New York City',
      country: 'USA',
      google_place_id: 'ChIJzWhpTVlZwokRRyrw-O4FIxI'
    },
    {
      name: 'Vinnies Pizzeria',
      description: 'So good',
      longitude: 40.7121437,
      latitude: -73.965175,
      neighborhood: 'Williamsburg',
      city: 'New York City',
      country: 'USA',
      google_place_id: 'ChIJbSt7rF1ZwokRrnJ-xbOu0i4'
    },
    {
      name: 'Solo Pizza NYC',
      description: 'Wicked',
      longitude: 40.7130545,
      latitude: -73.9841435,
      neighborhood: 'East Village',
      city: 'New York City',
      country: 'USA',
      google_place_id: 'ChIJZdq6eIJZwokR1iNy89Pax3Y'
    }
  ]
)

place = Place.first
User.all.each do |user|
  Recommendation.create(intention: 'eat', user: user, place: place,
                        by_role: Recommendation::BY_ROLES.sample,
                        time: Recommendation::TIMES.sample,
                        day: Recommendation::DAYS.sample
                        )
end
