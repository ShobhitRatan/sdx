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
kansas_city_chiefs = Team.create(conference: afc, division: west, name: "Kansas City Chiefs", city: "Kansas City, Missouri", image: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.amazon.com%2FKansas-Chiefs-Super-Champions-Banner%2Fdp%2FB013HI4N0Y&psig=AOvVaw19ulOrWEjjX2Hx41cUa0dL&ust=1589338330970000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCOCWx_CprekCFQAAAAAdAAAAABAD") 
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
