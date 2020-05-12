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
Game.destroy_all 
Gameday.destroy_all 
Season.destroy_all 

30.times do 
    User.create(name: Faker::Name.unique.name, email: Faker::Internet.unique.email, password: Faker::IDNumber.valid)   
end 

east = Division.create(region: "East") 
north = Division.create(region: "North") 
west = Division.create(region: "West") 
south = Division.create(region: "South") 

afc = Conference.create(name: "American Football Conference (AFC)") 
nfc = Conference.create(name: "National Football Conference (NFC)") 

buffalo_bills = Team.create(conference: afc, division: east, name: "Buffalo Bills", city: "Orchard Park, New York", image: "https://premcom.com/wp-content/uploads/2014/01/buffalo-bills-portfolio-logo.jpg") 
miami_dolphins = Team.create(conference: afc, division: east, name: "Miami Dolphins", city: "Miami Gardens, Florida", image: "https://exstreamist.com/wp-content/uploads/2016/08/watch-Miami-Dolphins-Online.jpg") 
new_england_patriots = Team.create(conference: afc, division: east, name: "New England Patriots", city: "Foxborough, Massachusetts", image: "https://rfathead-res.cloudinary.com/image/upload/q_auto,f_auto/c_pad,h_900/g_north,c_crop,h_900,w_900/c_pad,h_900,w_900/roomplus/14-14529_nfl_new_england_patriots_2016_state_of_massachusetts_logo_6628.jpg") 
new_york_jets = Team.create(conference: afc, division: east, name: "New York Jets", city: "East Rutherford, New Jersey", image: "https://static.clubs.nfl.com/image/private/t_editorial_landscape_12_desktop/jets/nue7vbohnzqllptdk3z6") 

baltimore_ravens = Team.create(conference: afc, division: north, name: "Baltimore Ravens", city: "Baltimore, Maryland", image: "https://images-na.ssl-images-amazon.com/images/I/51Pbhu81TOL._AC_.jpg") 
cincinnati_bengals = Team.create(conference: afc, division: north, name: "Cincinnati Bengals", city: "Cincinnati, Ohio", image: "https://rfathead-res.cloudinary.com/image/upload/q_auto,f_auto/c_pad,h_900/g_north,c_crop,h_900,w_900/c_pad,h_900,w_900/roomplus/14-14108_Cincinnati_Bengals_Die_Cut_Liquid_Blue_6628.jpg") 
cleveland_browns = Team.create(conference: afc, division: north, name: "Cleveland Browns", city: "Cleveland, Ohio", image: "https://static.clubs.nfl.com/image/private/t_editorial_landscape_8_desktop_mobile/f_auto/browns/n6r2ney7ovtwku7ummpe.jpg") 
pittsburgh_steelers = Team.create(conference: afc, division: north, name: "Pittsburgh Steelers", city: "Pittsburg, Pennsylvania", image: "https://clutchpoints.com/wp-content/uploads/2019/05/Pittsburgh-Steelers.jpg") 

houston_texans = Team.create(conference: afc, division: south, name: "Houston Texans", city: "Houston, Texas", image: "https://rfathead-res.cloudinary.com/image/upload/q_auto,f_auto/c_pad,h_900/g_north,c_crop,h_900,w_900/c_pad,h_900,w_900/roomplus/14-14377_nfl_premask_Houston_Texans_Stacked_Logotype_2015_logo_6628.jpg") 
indianapolis_colts = Team.create(conference: afc, division: south, name: "Indianapolis Colts", city: "Indianapolis, Indiana", image: "https://images-na.ssl-images-amazon.com/images/I/61WvGh89mpL.jpg") 
jacksonville_jaguars = Team.create(conference: afc, division: south, name: "Jacksonville Jaguars", city: "Jacksonville, Florida", image: "https://www.calendars.com/img/p/orig/202000001028.jpg") 
tennessee_titans = Team.create(conference: afc, division: south, name: "Tennessee Titans", city: "Nashville, Tennessee", image: "https://www.trendsinternational.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/r/p/rp17891-1.jpg") 

denver_broncos = Team.create(conference: afc, division: west, name: "Denver Broncos", city: "Denver, Colorado", image: "https://rfathead-res.cloudinary.com/image/upload/q_auto,f_auto/c_pad,h_900/g_north,c_crop,h_900,w_900/c_pad,h_900,w_900/roomplus/14-14012D_nfl_denver_broncos_logo_6628.jpg") 
kansas_city_chiefs = Team.create(conference: afc, division: west, name: "Kansas City Chiefs", city: "Kansas City, Missouri", image: "https://rfathead-res.cloudinary.com/image/upload/q_auto,f_auto/c_pad,h_900/g_north,c_crop,h_900,w_900/c_pad,h_900,w_900/roomplus/14-14018_nfl_kansas_city_chiefs_logo_6628.jpg") 
las_vegas_raiders = Team.create(conference: afc, division: west, name: "Las Vegas Raiders", city: "Las Vegas, Nevada", image: "https://media.graytvinc.com/images/810*455/1280x720_70327C00-YMMSM.jpg") 
los_angeles_chargers = Team.create(conference: afc, division: west, name: "Los Angeles Chargers", city: "Inglewood, California", image: "https://rfathead-res.cloudinary.com/image/upload/q_auto,f_auto/c_pad,h_900/g_north,c_crop,h_900,w_900/c_pad,h_900,w_900/multi_room/prod/14-14654_NFL_Los_Angeles_Chargers_2019_RealBig_Logo_prod-all.jpg") 

dallas_cowboys = Team.create(conference: nfc, division: east, name: "Dallas Cowboys", city: "Arlington, Texas", image: "https://rfathead-res.cloudinary.com/image/upload/q_auto,f_auto/c_pad,h_900/g_north,c_crop,h_900,w_900/c_pad,h_900,w_900/roomplus/14-14527_nfl_dallas_cowboys_2016_state_of_texas_logo_6628.jpg") 
new_york_giants = Team.create(conference: nfc, division: east, name: "New York Giants", city: "East Rutherford, New Jersey", image: "https://images-na.ssl-images-amazon.com/images/I/81gCTkBe8lL._AC_SL1355_.jpg") 
philidelphia_eagles = Team.create(conference: nfc, division: east, name: "Philidelphia Eagles", city: "Philadelphia, Pennsylvania", image: "https://rfathead-res.cloudinary.com/image/upload/q_auto,f_auto/c_pad,h_3000/g_north,c_crop,h_3000,w_3000/c_pad,h_3000,w_3000/roomplus/14-14125_Philadelphia_Eagles_Die_Cut_Liquid_Blue_6628.jpg") 
washington_redskins = Team.create(conference: nfc, division: east, name: "Washington Redskins", city: "Landover, Maryland", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSizBKBVHBxZYPnQVVrXq_gRt9fvlPd4GMUjFPa-oHYznuejWur&usqp=CAU") 

chicago_bears = Team.create(conference: nfc, division: north, name: "Chicago Bears", city: "Chicago, Illinois", image: "https://patch.com/img/cdn/users/22835664/2016/04/raw/20160457224bde4b300.jpg") 
detroit_lions = Team.create(conference: nfc, division: north, name: "Detroit Lions", city: "Detroit, Michigan", image: "https://cdn.vox-cdn.com/thumbor/yCOChwGrWhtNQXCT9fLBu9gjsIM=/0x0:1200x800/1200x800/filters:focal(703x245:895x437)/cdn.vox-cdn.com/uploads/chorus_image/image/65806616/nfl_exit_survey_lions_getty_ringer.0.jpg") 
green_bay_packers = Team.create(conference: nfc, division: north, name: "Green Bay Packers", city: "Green Bay, Wisconsin", image: "https://images-na.ssl-images-amazon.com/images/I/91ZtgLRQEyL.jpg") 
minnesota_vikings = Team.create(conference: nfc, division: north, name: "Minnesota Vikings", city: "Minneapolis, Minnesota", image: "https://www.trendsinternational.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/r/p/rp17878-1.jpg") 

atlanta_falcons = Team.create(conference: nfc, division: south, name: "Atlanta Falcons", city: "Atlanta, Georgia", image: "https://rfathead-res.cloudinary.com/image/upload/q_auto,f_auto/c_pad,h_3000/g_north,c_crop,h_3000,w_3000/c_pad,h_3000,w_3000/roomplus/14-14542_nfl_atanta_falcons_2016_state_of_georgia_logo_6628.jpg") 
carolina_panthers = Team.create(conference: nfc, division: south, name: "Carolina Panthers", city: "Charlotte, North Carolina", image: "https://megaphone.imgix.net/podcasts/d33b7ec2-fe35-11e8-8fdd-fbcbfc3922da/image/uploads_2F1545078440459-ocewctvcki-163c595b7386e17b41a81f0a16d90159_2FPanthers%2BTest%2BGraphic%2B1500x1500.png?ixlib=rails-2.1.2") 
new_orleans_saints = Team.create(conference: nfc, division: south, name: "New Orleans Saints", city: "New Orleans, Louisiana", image: "https://static.clubs.nfl.com/image/upload/t_editorial_landscape_8_desktop_mobile/f_auto/saints/yxvu5pphvbgurgb0crkd") 
tampa_bay_buccaneers = Team.create(conference: nfc, division: south, name: "Tampa Bay Buccaneers", city: "Tampa, Florida", image: "https://images-na.ssl-images-amazon.com/images/I/81%2BO6u-3FkL.jpg") 

arizona_cardinals = Team.create(conference: nfc, division: west, name: "Arizona Cardinals", city: "Glendale, Arizona", image: "https://rfathead-res.cloudinary.com/image/upload/q_auto,f_auto/c_pad,h_3000/g_north,c_crop,h_3000,w_3000/c_pad,h_3000,w_3000/roomplus/89-03341_NFL_Arizona_Cardinals_2016_POD_Teammate_Logo_6628.jpg") 
los_angeles_rams = Team.create(conference: nfc, division: west, name: "Los Angeles Rams", city: "Inglewood, California", image: "https://www.trendsinternational.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/5/15986---los-angeles-rams---end-zone-17_4x6.jpg") 
san_francisco_49ers = Team.create(conference: nfc, division: west, name: "San Francisco 49ers", city: "Santa Clara, California", image: "https://live.staticflickr.com/65535/49469185626_e980acd367_o.png") 
seattle_seahawks = Team.create(conference: nfc, division: west, name: "Seattle Seahawks", city: "Seattle, Washington", image: "https://rfathead-res.cloudinary.com/image/upload/q_auto,f_auto/c_pad,h_900/g_north,c_crop,h_900,w_900/c_pad,h_900,w_900/roomplus/14-14129_Seattle_Seahawks_Die_Cut_Liquid_Blue_6628.jpg") 
# Buffalo Bills Games
game_1 = Game.create(name: "Buffalo Bills vs. NY Jets", winner: buffalo_bills, loser: new_york_jets, gametime: Date.new(2019,9,8)) 
game_2 = Game.create(name: "Buffalo Bills vs. NY Giants", winner: buffalo_bills, loser: new_york_giants, gametime: Date.new(2019,9,15)) 
game_3 = Game.create(name: "Buffalo Bills vs. Cincinnati Bengals", winner: buffalo_bills, loser: cincinnati_bengals, gametime: Date.new(2019,9,22)) 
game_4 = Game.create(name: "Buffalo Bills vs. New England Patriots", winner: new_england_patriots, loser: buffalo_bills, gametime: Date.new(2019,9,29)) 
game_5 = Game.create(name: "Buffalo Bills vs. Tennessee Titans", winner: buffalo_bills, loser: tennessee_titans, gametime: Date.new(2019,10,6)) 
game_6 = Game.create(name: "Buffalo Bills vs. Miami Dolphins", winner: buffalo_bills, loser: miami_dolphins, gametime: Date.new(2019,10,20)) 
game_7 = Game.create(name: "Buffalo Bills vs. Philadelphia Eagles", winner: philidelphia_eagles, loser: buffalo_bills, gametime: Date.new(2019,10,27)) 
game_8 = Game.create(name: "Buffalo Bills vs. Washington Redskins", winner: buffalo_bills, loser: washington_redskins, gametime: Date.new(2019,11,3)) 
game_9 = Game.create(name: "Buffalo Bills vs. Cleveland Browns", winner: cleveland_browns, loser: buffalo_bills, gametime: Date.new(2019,11,10)) 
game_10 = Game.create(name: "Buffalo Bills vs. Miami Dolphins", winner: buffalo_bills, loser: miami_dolphins, gametime: Date.new(2019,11,17)) 
game_11 = Game.create(name: "Buffalo Bills vs. Denver Broncos", winner: buffalo_bills, loser: denver_broncos, gametime: Date.new(2019,11,24)) 
game_12 = Game.create(name: "Buffalo Bills vs. Dallas Cowboys", winner: buffalo_bills, loser: dallas_cowboys, gametime: Date.new(2019,11,28)) 
game_13 = Game.create(name: "Buffalo Bills vs. Baltimore Ravens", winner: baltimore_ravens, loser: buffalo_bills, gametime: Date.new(2019,12,8)) 
game_14 = Game.create(name: "Buffalo Bills vs. Pittsburgh Steelers", winner: buffalo_bills, loser: pittsburgh_steelers, gametime: Date.new(2019,12,15)) 
game_15 = Game.create(name: "Buffalo Bills vs. New England Patriots", winner: new_england_patriots, loser: buffalo_bills, gametime: Date.new(2019,12,21)) 
game_16 = Game.create(name: "Buffalo Bills vs. NY Jets", winner: new_york_jets, loser: buffalo_bills, gametime: Date.new(2019,12,21)) 
# Miami Dolphins Games
game_17 = Game.create(name: "Miami Dolphins vs. Baltimore Ravens", winner: baltimore_ravens, loser: miami_dolphins, gametime: Date.new(2019,9,8)) 
game_18 = Game.create(name: "Miami Dolphins vs. New England Patriots", winner: new_england_patriots, loser: miami_dolphins, gametime: Date.new(2019,9,15)) 
game_19 = Game.create(name: "Miam Dolphins vs. Dallas Cowboys", winner: dallas_cowboys, loser: miami_dolphins, gametime: Date.new(2019,9,22)) 
game_20 = Game.create(name: "Miami Dolphins vs. LA Chargers", winner: los_angeles_chargers, loser: miami_dolphins, gametime: Date.new(2019,9,29)) 
game_21 = Game.create(name: "Miami Dolphins vs. Washington Redskins", winner: washington_redskins, loser: miami_dolphins, gametime: Date.new(2019,10,13)) 
game_22 = Game.create(name: "Miami Dolphins vs. Pittsburgh Steelers", winner: pittsburgh_steelers, loser: miami_dolphins, gametime: Date.new(2019,10,28)) 
game_23 = Game.create(name: "Miami Dolphins vs. NY Jets", winner: miami_dolphins, loser: new_york_jets, gametime: Date.new(2019,11,3)) 
game_24 = Game.create(name: "Miami Dolphins vs. Indianapolis Colts", winner: miami_dolphins, loser: indianapolis_colts, gametime: Date.new(2019,11,10)) 
game_25 = Game.create(name: "Miami Dolphins vs. Cleveland Browns", winner: cleveland_browns, loser: miami_dolphins, gametime: Date.new(2019,11,24))  
game_26 = Game.create(name: "Miami Dolphins vs. Philadelphia Eagles", winner: miami_dolphins, loser: philidelphia_eagles, gametime: Date.new(1019,12,1)) 
game_27 = Game.create(name: "Miami Dolphins vs. NY Jets", winner: new_york_jets, loser: miami_dolphins, gametime: Date.new(2019,12,8)) 
game_28 = Game.create(name: "Miami Dolphins vs. NY Giants", winner: new_york_giants, loser: miami_dolphins, gametime: Date.new(2019,12,15)) 
game_29 = Game.create(name: "Miami Dolphins vs. Cincinnati Bengals", winner: miami_dolphins, loser: cincinnati_bengals, gametime: Date.new(2019,12,22)) 
game_30 = Game.create(name: "Miami Dolphins vs. New England Patriots", winner: miami_dolphins, loser: new_england_patriots, gametime: Date.new(2019,12,29)) 
# New England Patriots Games 
game_31 = Game.create(name: "New England Patriots vs. Pittsburgh Steelers", winner: new_england_patriots, loser: pittsburgh_steelers, gametime: Date.new(2019,9,8)) 
game_32 = Game.create(name: "New England Patriots vs. NY Jets", winner: new_england_patriots, loser: new_york_jets, gametime: Date.new(2019,9,22)) 
game_33 = Game.create(name: "New England Patriots vs. Washington Redskins", winner: new_england_patriots, loser: washington_redskins, gametime: Date.new(2019,10,6))  
game_34 = Game.create(name: "New England Patriots vs. NY Giants", winner: new_england_patriots, loser: new_york_giants, gametime: Date.new(2019,10,10)) 
game_35 = Game.create(name: "New England Patriots vs. NY Jets", winner: new_england_patriots, loser: new_york_jets, gametime: Date.new(2019,10,21)) 
game_36 = Game.create(name: "New England Patriots vs. Cleveland Browns", winner: new_england_patriots, loser: cleveland_browns, gametime: Date.new(2019,10,27)) 
game_37 = Game.create(name: "New England Patriots vs. Baltimore Ravens", winner: baltimore_ravens, loser: new_england_patriots, gametime: Date.new(2019,11,3)) 
game_38 = Game.create(name: "New England Patriots vs. Philidelphia Eagles", winner: new_england_patriots, loser: philidelphia_eagles, gametime: Date.new(2019,11,17)) 
game_39 = Game.create(name: "New England Patriots vs. Dallas Cowboys", winner: new_england_patriots, loser: dallas_cowboys, gametime: Date.new(2019,11,24)) 
game_40 = Game.create(name: "New England Patriots vs. Houston Texans", winner: houston_texans, loser: new_england_patriots, gametime: Date.new(2019,12,1)) 
game_41 = Game.create(name: "New England Patriots vs. Kansas City Chiefs", winner: kansas_city_chiefs, loser: new_england_patriots, gametime: Date.new(2019,12,8)) 
game_42 = Game.create(name: "New England Patriots vs. Cincinnati Bengals", winner: new_england_patriots, loser: cincinnati_bengals, gametime: Date.new(2019,12,15)) 
# NY Jets Games 
game_43 = Game.create(name: "NY Jets vs. Cleveland Browns", winner: cleveland_browns, loser: new_york_jets, gametime: Date.new(2019,9,16)) 
game_44 = Game.create(name: "NY Jets vs. Philidelphia Eagles", winner: philidelphia_eagles, loser: new_york_jets, gametime: Date.new(2019,10,6)) 
game_45 = Game.create(name: "NY Jets vs. Dallas Cowboys", winner: new_york_jets, loser: dallas_cowboys, gametime: Date.new(2019,10,13)) 
game_46 = Game.create(name: "NY Jets vs. Jacksonville Jaguars", winner: jacksonville_jaguars, loser: new_york_jets, gametime: Date.new(2019,10,27)) 
game_47 = Game.create(name: "NY Jets vs. NY Giants", winner: new_york_jets, loser: new_york_giants, gametime: Date.new(2019,11,10)) 
game_48 = Game.create(name: "NY Jets vs. Washington Redskins", winner: new_york_jets, loser: washington_redskins, gametime: Date.new(2019,11,17)) 
game_49 = Game.create(name: "NY Jets vs. Las Vegas Raiders", winner: new_york_jets, loser: las_vegas_raiders, gametime: Date.new(2019,11,24)) 
game_50 = Game.create(name: "NY Jets vs. Cincinnati Bengals", winner: cincinnati_bengals, loser: new_york_jets, gametime: Date.new(2019,12,1)) 
game_51 = Game.create(name: "NY Jets vs. Baltimore Ravens", winner: baltimore_ravens, loser: new_york_jets, gametime: Date.new(2019,12,12)) 
game_52 = Game.create(name: "NY Jets vs. Pittsburgh Steelers", winner: new_york_jets, loser: pittsburgh_steelers, gametime: Date.new(2019,12,22)) 

# Season seed data 
regular_season = Season.create(season_type: "2019 Regular Season") 
# Current season seed data
game_1_2019 = CurrentSeason.create(season: regular_season, game: game_1) 
game_2_2019 = CurrentSeason.create(season: regular_season, game: game_2) 
game_3_2019 = CurrentSeason.create(season: regular_season, game: game_3) 
game_4_2019 = CurrentSeason.create(season: regular_season, game: game_4) 
game_5_2019 = CurrentSeason.create(season: regular_season, game: game_5) 
game_6_2019 = CurrentSeason.create(season: regular_season, game: game_6) 
game_7_2019 = CurrentSeason.create(season: regular_season, game: game_7) 
game_8_2019 = CurrentSeason.create(season: regular_season, game: game_8) 
game_9_2019 = CurrentSeason.create(season: regular_season, game: game_9) 
game_10_2019 = CurrentSeason.create(season: regular_season, game: game_10) 
game_11_2019 = CurrentSeason.create(season: regular_season, game: game_11) 
game_12_2019 = CurrentSeason.create(season: regular_season, game: game_12) 
game_13_2019 = CurrentSeason.create(season: regular_season, game: game_13)
game_14_2019 = CurrentSeason.create(season: regular_season, game: game_14)       
game_15_2019 = CurrentSeason.create(season: regular_season, game: game_15) 
game_16_2019 = CurrentSeason.create(season: regular_season, game: game_16) 
game_17_2019 = CurrentSeason.create(season: regular_season, game: game_17) 
game_18_2019 = CurrentSeason.create(season: regular_season, game: game_18)    
game_19_2019 = CurrentSeason.create(season: regular_season, game: game_19) 
game_20_2019 = CurrentSeason.create(season: regular_season, game: game_20) 
game_21_2019 = CurrentSeason.create(season: regular_season, game: game_21) 
game_22_2019 = CurrentSeason.create(season: regular_season, game: game_22) 
game_23_2019 = CurrentSeason.create(season: regular_season, game: game_23) 
game_24_2019 = CurrentSeason.create(season: regular_season, game: game_24) 
game_25_2019 = CurrentSeason.create(season: regular_season, game: game_25) 
game_26_2019 = CurrentSeason.create(season: regular_season, game: game_26) 
game_27_2019 = CurrentSeason.create(season: regular_season, game: game_27) 
game_28_2019 = CurrentSeason.create(season: regular_season, game: game_28) 
game_29_2019 = CurrentSeason.create(season: regular_season, game: game_29) 
game_30_2019 = CurrentSeason.create(season: regular_season, game: game_30)       
game_31_2019 = CurrentSeason.create(season: regular_season, game: game_31) 
game_32_2019 = CurrentSeason.create(season: regular_season, game: game_32) 
game_33_2019 = CurrentSeason.create(season: regular_season, game: game_33) 
game_34_2019 = CurrentSeason.create(season: regular_season, game: game_34) 
game_35_2019 = CurrentSeason.create(season: regular_season, game: game_35)
game_36_2019 = CurrentSeason.create(season: regular_season, game: game_36)
game_37_2019 = CurrentSeason.create(season: regular_season, game: game_37) 
game_38_2019 = CurrentSeason.create(season: regular_season, game: game_38) 
game_39_2019 = CurrentSeason.create(season: regular_season, game: game_39)
game_40_2019 = CurrentSeason.create(season: regular_season, game: game_40) 
game_41_2019 = CurrentSeason.create(season: regular_season, game: game_41) 
game_42_2019 = CurrentSeason.create(season: regular_season, game: game_42)
game_43_2019 = CurrentSeason.create(season: regular_season, game: game_43)
game_44_2019 = CurrentSeason.create(season: regular_season, game: game_44) 
game_45_2019 = CurrentSeason.create(season: regular_season, game: game_45) 
game_46_2019 = CurrentSeason.create(season: regular_season, game: game_46) 
game_47_2019 = CurrentSeason.create(season: regular_season, game: game_47) 
game_48_2019 = CurrentSeason.create(season: regular_season, game: game_48) 
game_49_2019 = CurrentSeason.create(season: regular_season, game: game_49) 
game_50_2019 = CurrentSeason.create(season: regular_season, game: game_50) 
game_51_2019 = CurrentSeason.create(season: regular_season, game: game_51) 
game_52_2019 = CurrentSeason.create(season: regular_season, game: game_52) 
