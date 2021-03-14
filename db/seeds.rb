# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Manager.create(email: 'manager@realhouse.io', password: '12345678')

House.create(
  home: Home.new(
    owner: 'house@mail.com',
    address: '123, New Steet, London',
    sqmt: 12,
    price: 12_000
  ),
  rooms: 2,
  floors: 2,
  air_cond: true
)

ComplexBuilding.create(
  home: Home.new(
    owner: 'complexbuilding@mail.com',
    address: '123, New Steet, London',
    sqmt: 12,
    price: 12_000
  ),
  units: 2
)

CommercialUnit.create(
  home: Home.new(
    owner: 'commercialunit@mail.com',
    address: '123, New Steet, London',
    sqmt: 12,
    price: 12_000
  ),
  shops: 2,
  parking: 2
)
