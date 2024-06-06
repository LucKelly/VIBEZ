# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts 'Destroying all existing records to start from a clean state'
Bar.destroy_all
Subvibe.destroy_all
User.destroy_all
BarSubvibe.destroy_all
# add dependent_destroys to models so that the dependents also get deleted


puts 'Creating 5 users'
@luc = User.create!(username: "Luc123", email: "luc@test.com", password: "password")
@feline = User.create!(username: "Feline123", email: "feline@test.com", password: "password")
@aureo = User.create!(username: "Aureo123", email: "aureo@test.com", password: "password")
@jonas = User.create!(username: "Jonas123", email: "jonas@test.com", password: "password")
@jeff = User.create!(username: "JazzyJeff123", email: "jj@test.com", password: "password")


puts 'Creating 5 outside subvibes'
@outside_trendy = Subvibe.create!(name: "outside trendy", main_vibe: "trendy")
@outside_boogie = Subvibe.create!(name: "outside boogie", main_vibe: "boogie")
@outside_intimate = Subvibe.create!(name: "outside intimate", main_vibe: "intimate")
@outside_pub = Subvibe.create!(name: "outside pub", main_vibe: "pub")
@outside_sports = Subvibe.create!(name: "outside sports", main_vibe: "sports")


puts 'Creating 5 rooftop subvibes'
@rooftop_boogie = Subvibe.create!(name: "rooftop boogie", main_vibe: "boogie")
@rooftop_intimate = Subvibe.create!(name: "rooftop intimate", main_vibe: "intimate")
@rooftop_trendy = Subvibe.create!(name: "rooftop trendy", main_vibe: "trendy")
@rooftop_pub = Subvibe.create!(name: "rooftop pub", main_vibe: "pub")
@rooftop_sports = Subvibe.create!(name: "rooftop sports", main_vibe: "sports")


puts 'Creating 5 speakeasy subvibes'
@speakeasy_boogie = Subvibe.create!(name: "speakeasy boogie", main_vibe: "boogie")
@speakeasy_intimate = Subvibe.create!(name: "speakeasy intimate", main_vibe: "intimate")
@speakeasy_trendy = Subvibe.create!(name: "speakeasy trendy", main_vibe: "trendy")
@speakeasy_pub = Subvibe.create!(name: "speakeasy pub", main_vibe: "pub")
@speakeasy_sports = Subvibe.create!(name: "speakeasy sports", main_vibe: "sports")


puts 'Creating 5 tropical subvibes'
@tropical_boogie = Subvibe.create!(name: "tropical boogie", main_vibe: "boogie")
@tropical_intimate = Subvibe.create!(name: "tropical intimate", main_vibe: "intimate")
@tropical_trendy = Subvibe.create!(name: "tropical trendy", main_vibe: "trendy")
@tropical_pub = Subvibe.create!(name: "tropical pub", main_vibe: "pub")
@tropical_sports = Subvibe.create!(name: "tropical sports", main_vibe: "sports")


puts 'Creating 5 pints subvibes'
@pints_boogie = Subvibe.create!(name: "pints boogie", main_vibe: "boogie")
@pints_intimate = Subvibe.create!(name: "pints intimate", main_vibe: "intimate")
@pints_trendy = Subvibe.create!(name: "pints trendy", main_vibe: "trendy")
@pints_pub = Subvibe.create!(name: "pints pub", main_vibe: "pub")
@pints_sports = Subvibe.create!(name: "pints sports", main_vibe: "sports")


puts 'Creating 5 cocktails subvibes'
@cocktails_boogie = Subvibe.create!(name: "cocktails boogie", main_vibe: "boogie")
@cocktails_intimate = Subvibe.create!(name: "cocktails intimate", main_vibe: "intimate")
@cocktails_trendy = Subvibe.create!(name: "cocktails trendy", main_vibe: "trendy")
@cocktails_pub = Subvibe.create!(name: "cocktails pub", main_vibe: "pub")
@cocktails_sports = Subvibe.create!(name: "cocktails sports", main_vibe: "sports")


puts 'Creating 5 live_music subvibes'
@live_music_boogie = Subvibe.create!(name: "live_music boogie", main_vibe: "boogie")
@live_music_intimate = Subvibe.create!(name: "live_music intimate", main_vibe: "intimate")
@live_music_trendy = Subvibe.create!(name: "live_music trendy", main_vibe: "trendy")
@live_music_pub = Subvibe.create!(name: "live_music pub", main_vibe: "pub")
@live_music_sports = Subvibe.create!(name: "live_music sports", main_vibe: "sports")


puts 'Creating 5 ambient_music subvibes'
@ambient_music_boogie = Subvibe.create!(name: "ambient_music boogie", main_vibe: "boogie")
@ambient_music_intimate = Subvibe.create!(name: "ambient_music intimate", main_vibe: "intimate")
@ambient_music_trendy = Subvibe.create!(name: "ambient_music trendy", main_vibe: "trendy")
@ambient_music_pub = Subvibe.create!(name: "ambient_music pub", main_vibe: "pub")
@ambient_music_sports = Subvibe.create!(name: "ambient_music sports", main_vibe: "sports")


puts 'Creating 5 DJ_music subvibes'
@DJ_music_boogie = Subvibe.create!(name: "DJ_music boogie", main_vibe: "boogie")
@DJ_music_intimate = Subvibe.create!(name: "DJ_music intimate", main_vibe: "intimate")
@DJ_music_trendy = Subvibe.create!(name: "DJ_music trendy", main_vibe: "trendy")
@DJ_music_pub = Subvibe.create!(name: "DJ_music pub", main_vibe: "pub")
@DJ_music_sports = Subvibe.create!(name: "DJ_music sports", main_vibe: "sports")


puts 'Creating 5 seating subvibes'
@seating_boogie = Subvibe.create!(name: "seating boogie", main_vibe: "boogie")
@seating_intimate = Subvibe.create!(name: "seating intimate", main_vibe: "intimate")
@seating_trendy = Subvibe.create!(name: "seating trendy", main_vibe: "trendy")
@seating_pub = Subvibe.create!(name: "seating pub", main_vibe: "pub")
@seating_sports = Subvibe.create!(name: "seating sports", main_vibe: "sports")


puts 'Creating 5 dancefloor subvibes'
@dancefloor_boogie = Subvibe.create!(name: "dancefloor boogie", main_vibe: "boogie")
@dancefloor_intimate = Subvibe.create!(name: "dancefloor intimate", main_vibe: "intimate")
@dancefloor_trendy = Subvibe.create!(name: "dancefloor trendy", main_vibe: "trendy")
@dancefloor_pub = Subvibe.create!(name: "dancefloor pub", main_vibe: "pub")
@dancefloor_sports = Subvibe.create!(name: "dancefloor sports", main_vibe: "sports")


puts 'Creating 5 games subvibes'
@games_boogie = Subvibe.create!(name: "games boogie", main_vibe: "boogie")
@games_intimate = Subvibe.create!(name: "games intimate", main_vibe: "intimate")
@games_trendy = Subvibe.create!(name: "games trendy", main_vibe: "trendy")
@games_pub = Subvibe.create!(name: "games pub", main_vibe: "pub")
@games_sports = Subvibe.create!(name: "games sports", main_vibe: "sports")


puts 'Creating 5 tapas subvibes'
@tapas_boogie = Subvibe.create!(name: "tapas boogie", main_vibe: "boogie")
@tapas_intimate = Subvibe.create!(name: "tapas intimate", main_vibe: "intimate")
@tapas_trendy = Subvibe.create!(name: "tapas trendy", main_vibe: "trendy")
@tapas_pub = Subvibe.create!(name: "tapas pub", main_vibe: "pub")
@tapas_sports = Subvibe.create!(name: "tapas sports", main_vibe: "sports")


puts 'Creating 5 western subvibes'
@western_boogie = Subvibe.create!(name: "western boogie", main_vibe: "boogie")
@western_intimate = Subvibe.create!(name: "western intimate", main_vibe: "intimate")
@western_trendy = Subvibe.create!(name: "western trendy", main_vibe: "trendy")
@western_pub = Subvibe.create!(name: "western pub", main_vibe: "pub")
@western_sports = Subvibe.create!(name: "western sports", main_vibe: "sports")


puts 'Creating 5 kareoke subvibes'
@kareoke_boogie = Subvibe.create!(name: "kareoke boogie", main_vibe: "boogie")
@kareoke_intimate = Subvibe.create!(name: "kareoke intimate", main_vibe: "intimate")
@kareoke_trendy = Subvibe.create!(name: "kareoke trendy", main_vibe: "trendy")
@kareoke_pub = Subvibe.create!(name: "kareoke pub", main_vibe: "pub")
@kareoke_sports = Subvibe.create!(name: "kareoke sports", main_vibe: "sports")


# how do we seed the opening/closing times and the latitude/longitude


puts 'Creating 20 bars'
@sneaky_sip = Bar.create!(name: "sneaky_sip", price: "€", opening_time: 11, closing_time: 20, address: "R. Gustavo de Matos Sequeira 42A, 1250-120 Lisboa")
@oasis = Bar.create!(name: "oasis", price: "€", opening_time: 11, closing_time: 20, address: "R. Nova do Carvalho 48, 1200-372 Lisboa")
@copacabana = Bar.create!(name: "copacabana", price: "€", opening_time: 11, closing_time: 20, address: "R. da Atalaia 91, 1200-043 Lisboa")
@boa_vista = Bar.create!(name: "boa_vista", price: "€", opening_time: 11, closing_time: 20, address: "Rua da Boavista 16, 1200-275 Lisboa")
@java = Bar.create!(name: "java", price: "€", opening_time: 11, closing_time: 20, address: "Praça Dom Luís I 30, 1200-275 Lisboa")
@red_frog = Bar.create!(name: "red_frog", price: "€", opening_time: 11, closing_time: 20, address: "Praça da Alegria 66b, 1250-004 Lisboa")
@cinco = Bar.create!(name: "cinco", price: "€", opening_time: 11, closing_time: 20, address: "R. Ruben A. Leitão 17A, 1200-392 Lisboa")
@secret_garden = Bar.create!(name: "secret_garden", price: "€", opening_time: 11, closing_time: 20, address: "Largo Monte, 1170-253 Lisboa")
@uni_cocktail = Bar.create!(name: "uni_cocktail", price: "€", opening_time: 11, closing_time: 20, address: "Rua de O Século 204, 1250-095 Lisboa")
@park_bar = Bar.create!(name: "park_bar", price: "€", opening_time: 11, closing_time: 20, address: "Calçada do Combro 58, 1200-123 Lisboa")
@the_couch = Bar.create!(name: "the_couch", price: "€", opening_time: 11, closing_time: 20, address: "R. do Alecrim 21A, 1200-014 Lisboa")
@lisboario = Bar.create!(name: "lisboario", price: "€", opening_time: 11, closing_time: 20, address: "Cais Gás 7, 1200-109 Lisboa")
@ogilins_irish_pub = Bar.create!(name: "ogilins_irish_pub", price: "€", opening_time: 11, closing_time: 20, address: "R. dos Remolares 8, 1200-371 Lisboa")
@british_bar_lisboa = Bar.create!(name: "british_bar_lisboa", price: "€", opening_time: 11, closing_time: 20, address: "R. Bernardino Costa 52, 1200-052 Lisboa")
@the_queen_ale = Bar.create!(name: "the_queen_ale", price: "€", opening_time: 11, closing_time: 20, address: "Largo do Tab. 9, 1150-344 Lisboa")
@sky_bar = Bar.create!(name: "sky_bar", price: "€", opening_time: 11, closing_time: 20, address: "Av. da Liberdade 185, 1269-050 Lisboa")
@a_capela = Bar.create!(name: "a_capela", price: "€", opening_time: 11, closing_time: 20, address: "R. da Atalaia 45, 1200-043 Lisboa")
@principe_real = Bar.create!(name: "principe_real", price: "€", opening_time: 11, closing_time: 20, address: "R. Dom Pedro V 56 J, 1250-094 Lisboa")
@pavilhao = Bar.create!(name: "pavilhao", price: "€", opening_time: 11, closing_time: 20, address: "R. Dom Pedro V 89, 1250-093 Lisboa")
@v_rooftop = Bar.create!(name: "v_rooftop", price: "€", opening_time: 11, closing_time: 20, address: "R. Rodrigo da Fonseca 2, 1250-191 Lisboa")



puts 'Creating 9 bar subvibes and 5 favourites'
BarSubvibe.create!(bar: @sneaky_sip, subvibe: @games_boogie)
BarSubvibe.create!(bar: @sneaky_sip, subvibe: @kareoke_boogie)
BarSubvibe.create!(bar: @sneaky_sip, subvibe: @dancefloor_trendy)
BarSubvibe.create!(bar: @sneaky_sip, subvibe: @DJ_music_trendy)
BarSubvibe.create!(bar: @sneaky_sip, subvibe: @seating_pub)
Favourite.create!(bar:@sneaky_sip,user:@luc)
Favourite.create!(bar:@sneaky_sip,user:@feline)
Favourite.create!(bar:@sneaky_sip,user:@aureo)
Favourite.create!(bar:@sneaky_sip,user:@jonas)
Favourite.create!(bar:@sneaky_sip,user:@jeff)
BarSubvibe.create!(bar: @oasis, subvibe: @kareoke_boogie)
BarSubvibe.create!(bar: @copacabana, subvibe: @tapas_boogie)
BarSubvibe.create!(bar: @boa_vista, subvibe: @DJ_music_boogie)
BarSubvibe.create!(bar: @java, subvibe: @pints_pub)

puts 'Done!'
