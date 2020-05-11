# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all 
Division.destroy_all 
Conference.destroy_all 
Team.destroy_all 

30.times do 
    User.create(name: Faker::Name.unique.name, email: Faker::Internet.unique.email, password: Faker::IDNumber.valid)   
end 

east = Division.create(region: "East") 
north = Division.create(region: "North") 
west = Division.create(region: "West") 
south = Division.create(region: "South") 

afc = Conference.create(name: "American Football Conference (AFC)") 
nfc = Conference.create(name: "National Football Conference (NFC)") 

buffalo_bills = Team.create(conference: afc, division: east, name: "Buffalo Bills", city: "Orchard Park, New York") 
miami_dolphins = Team.create(conference: afc, division: east, name: "Miami Dolphins", city: "Miami Gardens, Florida") 
new_england_patriots = Team.create(conference: afc, division: east, name: "New England Patriots", city: "Foxborough, Massachusetts") 
new_york_jets = Team.create(conference: afc, division: east, name: "New York Jets", city: "East Rutherford, New Jersey") 

baltimore_ravens = Team.create(conference: afc, division: north, name: "Baltimore Ravens", city: "Baltimore, Maryland") 
cincinnati_bengals = Team.create(conference: afc, division: north, name: "Cincinnati Bengals", city: "Cincinnati, Ohio") 
cleveland_browns = Team.create(conference: afc, division: north, name: "Cleveland Browns", city: "Cleveland, Ohio") 
pittsburgh_steelers = Team.create(conference: afc, division: north, name: "Pittsburgh Steelers", city: "Pittsburg, Pennsylvania") 

houston_texans = Team.create(conference: afc, division: south, name: "Houston Texans", city: "Houston, Texas") 
indianapolis_colts = Team.create(conference: afc, division: south, name: "Indianapolis Colts", city: "Indianapolis, Indiana") 
jacksonville_jaguars = Team.create(conference: afc, division: south, name: "Jacksonville Jaguars", city: "Jacksonville, Florida") 
tennessee_titans = Team.create(conference: afc, division: south, name: "Tennessee Titans", city: "Nashville, Tennessee") 

denver_broncos = Team.create(conference: afc, division: west, name: "Denver Broncos", city: "Denver, Colorado") 
kansas_city_chiefs = Team.create(conference: afc, division: west, name: "Kansas City Chiefs", city: "Kansas City, Missouri") 
las_vegas_raiders = Team.create(conference: afc, division: west, name: "Las Vegas Raiders", city: "Las Vegas, Nevada") 
los_angeles_chargers = Team.create(conference: afc, division: west, name: "Los Angeles Chargers", city: "Inglewood, California") 

dallas_cowboys = Team.create(conference: nfc, division: east, name: "Dallas Cowboys", city: "Arlington, Texas") 
new_york_giants = Team.create(conference: nfc, division: east, name: "New York Giants", city: "East Rutherford, New Jersey") 
philidelphia_eagles = Team.create(conference: nfc, division: east, name: "Philidelphia Eagles", city: "Philadelphia, Pennsylvania") 
washington_redskins = Team.create(conference: nfc, division: east, name: "Washington Redskins", city: "Landover, Maryland") 

chicago_bears = Team.create(conference: nfc, division: north, name: "Chicago Bears", city: "Chicago, Illinois") 
detroit_lions = Team.create(conference: nfc, division: north, name: "Detroit Lions", city: "Detroit, Michigan") 
green_bay_packers = Team.create(conference: nfc, division: north, name: "Green Bay Packers", city: "Green Bay, Wisconsin") 
minnesota_vikings = Team.create(conference: nfc, division: north, name: "Minnesota Vikings", city: "Minneapolis, Minnesota") 

atlanta_falcons = Team.create(conference: nfc, division: south, name: "Atlanta Falcons", city: "Atlanta, Georgia") 
carolina_panthers = Team.create(conference: nfc, division: south, name: "Carolina Panthers", city: "Charlotte, North Carolina") 
new_orleans_saints = Team.create(conference: nfc, division: south, name: "New Orleans Saints", city: "New Orleans, Louisiana") 
tampa_bay_buccaneers = Team.create(conference: nfc, division: south, name: "Tampa Bay Buccaneers", city: "Tampa, Florida") 

arizona_cardinals = Team.create(conference: nfc, division: west, name: "Arizona Cardinals", city: "Glendale, Arizona") 
los_angeles_rams = Team.create(conference: nfc, division: west, name: "Los Angeles Rams", city: "Inglewood, California") 
san_francisco_49ers = Team.create(conference: nfc, division: west, name: "San Francisco 49ers", city: "Santa Clara, California") 
seattle_seahawks = Team.create(conference: nfc, division: west, name: "Seattle Seahawks", city: "Seattle, Washington") 
