# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Place.delete_all

places = [
    {title: "Museum of Science and Industry", photo_url: "google.com", admission_price: 1000, description: "Museum"},
    {title: "Soldier Field", photo_url: "bears.com", admission_price: 10000, description: "Chicago Bears football stadium."},
    {title: "Wrigley Field", photo_url: "bears.com", admission_price: 10000, description: "Chicago Bears football stadium."},
    {title: "United Center", photo_url: "bears.com", admission_price: 10000, description: "Chicago Bears football stadium."},
]

Place.create(places)
