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
luc = User.create!(username: "Luc123", email: "luc@test.com", password: "password")
luc.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1718297517/disco_stu_icon_hjg0si.png'), filename: 'discostu.jpg')
feline = User.create!(username: "Feline123", email: "feline@test.com", password: "password")
feline.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670500/017-woman_vvjguy.png'), filename: 'blondewoman.jpg')
aureo = User.create!(username: "Aureo123", email: "aureo@test.com", password: "password")
aureo.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717671824/man_hihrl3.png'), filename: 'maleblack.jpg')
jonas = User.create!(username: "Jonas123", email: "jonas@test.com", password: "password")
jonas.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670504/021-man-1_boayev.png'), filename: 'male.jpg')
jeff = User.create!(username: "JazzyJeff123", email: "jj@test.com", password: "password")
jeff.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670504/020-woman-2_mllshs.png'), filename: 'woman2.jpg')


puts 'Creating 5 outside subvibes'
outside_trendy = Subvibe.create!(name: "outside", main_vibe: "trendy")
outside_trendy.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670492/001-sun_zchdhi.png'), filename: 'outsidetrendy.jpg')
outside_boogie = Subvibe.create!(name: "outside", main_vibe: "boogie")
outside_boogie.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670492/001-sun_zchdhi.png'), filename: 'outsideboogie.jpg')
outside_intimate = Subvibe.create!(name: "outside", main_vibe: "intimate")
outside_intimate.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670492/001-sun_zchdhi.png'), filename: 'outsideintimate.jpg')
outside_pub = Subvibe.create!(name: "outside", main_vibe: "pub")
outside_pub.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670492/001-sun_zchdhi.png'), filename: 'outsidepub.jpg')
outside_sports = Subvibe.create!(name: "outside", main_vibe: "sports")
outside_sports.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670492/001-sun_zchdhi.png'), filename: 'outsidesports.jpg')


puts 'Creating 5 rooftop subvibes'
rooftop_boogie = Subvibe.create!(name: "rooftop", main_vibe: "boogie")
rooftop_boogie.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670492/002-rooftop_aigzid.png'), filename: 'rooftop_boogie.jpg')
rooftop_intimate = Subvibe.create!(name: "rooftop", main_vibe: "intimate")
rooftop_intimate.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670492/002-rooftop_aigzid.png'), filename: 'rooftop_intimate.jpg')
rooftop_trendy = Subvibe.create!(name: "rooftop", main_vibe: "trendy")
rooftop_trendy.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670492/002-rooftop_aigzid.png'), filename: 'rooftop_trendy.jpg')
rooftop_pub = Subvibe.create!(name: "rooftop", main_vibe: "pub")
rooftop_pub.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670492/002-rooftop_aigzid.png'), filename: 'rooftop_pub.jpg')
rooftop_sports = Subvibe.create!(name: "rooftop", main_vibe: "sports")
rooftop_sports.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670492/002-rooftop_aigzid.png'), filename: 'rooftop_sports.jpg')


puts 'Creating 5 speakeasy subvibes'
speakeasy_boogie = Subvibe.create!(name: "speakeasy", main_vibe: "boogie")
speakeasy_boogie.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670492/003-lips_yk7y7s.png'), filename: 'speakeasy_boogie.jpg')
speakeasy_intimate = Subvibe.create!(name: "speakeasy", main_vibe: "intimate")
speakeasy_intimate.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670492/003-lips_yk7y7s.png'), filename: 'speakeasy_intimate.jpg')
speakeasy_trendy = Subvibe.create!(name: "speakeasy", main_vibe: "trendy")
speakeasy_trendy.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670492/003-lips_yk7y7s.png'), filename: 'speakeasy_trendy.jpg')
speakeasy_pub = Subvibe.create!(name: "speakeasy", main_vibe: "pub")
speakeasy_pub.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670492/003-lips_yk7y7s.png'), filename: 'speakeasy_pub.jpg')
speakeasy_sports = Subvibe.create!(name: "speakeasy", main_vibe: "sports")
speakeasy_sports.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670492/003-lips_yk7y7s.png'), filename: 'speakeasy_sports.jpg')


puts 'Creating 5 tropical subvibes'
tropical_boogie = Subvibe.create!(name: "tropical", main_vibe: "boogie")
tropical_boogie.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670492/004-palm-tree_jkvqds.png'), filename: 'tropical_boogie.jpg')
tropical_intimate = Subvibe.create!(name: "tropical", main_vibe: "intimate")
tropical_intimate.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670492/004-palm-tree_jkvqds.png'), filename: 'tropical_intimate.jpg')
tropical_trendy = Subvibe.create!(name: "tropical", main_vibe: "trendy")
tropical_trendy.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670492/004-palm-tree_jkvqds.png'), filename: 'tropical_trendy.jpg')
tropical_pub = Subvibe.create!(name: "tropical", main_vibe: "pub")
tropical_pub.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670492/004-palm-tree_jkvqds.png'), filename: 'tropical_pub.jpg')
tropical_sports = Subvibe.create!(name: "tropical", main_vibe: "sports")
tropical_sports.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670492/004-palm-tree_jkvqds.png'), filename: 'tropical_sports.jpg')



puts 'Creating 5 pints subvibes'
pints_boogie = Subvibe.create!(name: "pints", main_vibe: "boogie")
pints_boogie.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670492/005-beer_zaknqf.png'), filename: 'pints_boogie.jpg')
pints_intimate = Subvibe.create!(name: "pints", main_vibe: "intimate")
pints_intimate.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670492/005-beer_zaknqf.png'), filename: 'pints_intimate.jpg')
pints_trendy = Subvibe.create!(name: "pints", main_vibe: "trendy")
pints_trendy.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670492/005-beer_zaknqf.png'), filename: 'pints_trendy.jpg')
pints_pub = Subvibe.create!(name: "pints", main_vibe: "pub")
pints_pub.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670492/005-beer_zaknqf.png'), filename: 'pints_pub.jpg')
pints_sports = Subvibe.create!(name: "pints", main_vibe: "sports")
pints_sports.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670492/005-beer_zaknqf.png'), filename: 'pints_sports.jpg')




puts 'Creating 5 cocktails subvibes'
cocktails_boogie = Subvibe.create!(name: "cocktails", main_vibe: "boogie")
cocktails_boogie.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670493/006-cup_povdyc.png'), filename: 'cocktails_boogie.jpg')
cocktails_intimate = Subvibe.create!(name: "cocktails", main_vibe: "intimate")
cocktails_intimate.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670493/006-cup_povdyc.png'), filename: 'cocktails_intimate.jpg')
cocktails_trendy = Subvibe.create!(name: "cocktails", main_vibe: "trendy")
cocktails_trendy.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670493/006-cup_povdyc.png'), filename: 'cocktails_trendy.jpg')
cocktails_pub = Subvibe.create!(name: "cocktails", main_vibe: "pub")
cocktails_pub.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670493/006-cup_povdyc.png'), filename: 'cocktails_pub.jpg')
cocktails_sports = Subvibe.create!(name: "cocktails", main_vibe: "sports")
cocktails_sports.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670493/006-cup_povdyc.png'), filename: 'cocktails_sports.jpg')




puts 'Creating 5 live_music subvibes'
live_music_boogie = Subvibe.create!(name: "live music", main_vibe: "boogie")
live_music_boogie.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670493/007-live-music_kxeju5.png'), filename: 'live_music_boogie.jpg')
live_music_intimate = Subvibe.create!(name: "live music", main_vibe: "intimate")
live_music_intimate.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670493/007-live-music_kxeju5.png'), filename: 'live_music_intimate.jpg')
live_music_trendy = Subvibe.create!(name: "live music", main_vibe: "trendy")
live_music_trendy.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670493/007-live-music_kxeju5.png'), filename: 'live_music_trendy.jpg')
live_music_pub = Subvibe.create!(name: "live music", main_vibe: "pub")
live_music_pub.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670493/007-live-music_kxeju5.png'), filename: 'live_music_pub.jpg')
live_music_sports = Subvibe.create!(name: "live music", main_vibe: "sports")
live_music_sports.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670493/007-live-music_kxeju5.png'), filename: 'live_music_sports.jpg')



puts 'Creating 5 ambient_music subvibes'
ambient_music_boogie = Subvibe.create!(name: "ambient music", main_vibe: "boogie")
ambient_music_boogie.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670500/015-romantic-music_dcr2lh.png'), filename: 'ambient_music_boogie.jpg')
ambient_music_intimate = Subvibe.create!(name: "ambient music", main_vibe: "intimate")
ambient_music_intimate.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670500/015-romantic-music_dcr2lh.png'), filename: 'ambient_music_intimate.jpg')
ambient_music_trendy = Subvibe.create!(name: "ambient music", main_vibe: "trendy")
ambient_music_trendy.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670500/015-romantic-music_dcr2lh.png'), filename: 'ambient_music_trendy.jpg')
ambient_music_pub = Subvibe.create!(name: "ambient music", main_vibe: "pub")
ambient_music_pub.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670500/015-romantic-music_dcr2lh.png'), filename: 'ambient_music_pub.jpg')
ambient_music_sports = Subvibe.create!(name: "ambient music", main_vibe: "sports")
ambient_music_sports.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670500/015-romantic-music_dcr2lh.png'), filename: 'ambient_music_sports.jpg')



puts 'Creating 5 DJ_music subvibes'
dj_music_boogie = Subvibe.create!(name: "DJ music", main_vibe: "boogie")
dj_music_boogie.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670493/008-dj_qyovv4.png'), filename: 'DJ_music_boogie.jpg')
dj_music_intimate = Subvibe.create!(name: "DJ music", main_vibe: "intimate")
dj_music_intimate.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670493/008-dj_qyovv4.png'), filename: 'DJ_music_intimate.jpg')
dj_music_trendy = Subvibe.create!(name: "DJ music", main_vibe: "trendy")
dj_music_trendy.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670493/008-dj_qyovv4.png'), filename: 'DJ_music_trendy.jpg')
dj_music_pub = Subvibe.create!(name: "DJ music", main_vibe: "pub")
dj_music_pub.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670493/008-dj_qyovv4.png'), filename: 'DJ_music_pub.jpg')
dj_music_sports = Subvibe.create!(name: "DJ music", main_vibe: "sports")
dj_music_sports.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670493/008-dj_qyovv4.png'), filename: 'DJ_music_sports.jpg')



puts 'Creating 5 seating subvibes'

seating_boogie = Subvibe.create!(name: "seating", main_vibe: "boogie")
seating_boogie.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670496/009-waiting-room_hf4pep.png'), filename: 'seating_boogie.jpg')
seating_intimate = Subvibe.create!(name: "seating", main_vibe: "intimate")
seating_intimate.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670496/009-waiting-room_hf4pep.png'), filename: 'seating_intimate.jpg')
seating_trendy = Subvibe.create!(name: "seating", main_vibe: "trendy")
seating_trendy.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670496/009-waiting-room_hf4pep.png'), filename: 'seating_trendy.jpg')
seating_pub = Subvibe.create!(name: "seating", main_vibe: "pub")
seating_pub.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670496/009-waiting-room_hf4pep.png'), filename: 'seating_pub.jpg')
seating_sports = Subvibe.create!(name: "seating", main_vibe: "sports")
seating_sports.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670496/009-waiting-room_hf4pep.png'), filename: 'seating_sports.jpg')



puts 'Creating 5 dancefloor subvibes'
dancefloor_boogie = Subvibe.create!(name: "dancefloor", main_vibe: "boogie")
dancefloor_boogie.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670496/010-disco_zxaved.png'), filename: 'dancefloor_boogie.jpg')
dancefloor_intimate = Subvibe.create!(name: "dancefloor", main_vibe: "intimate")
dancefloor_intimate.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670496/010-disco_zxaved.png'), filename: 'dancefloor_intimate.jpg')
dancefloor_trendy = Subvibe.create!(name: "dancefloor", main_vibe: "trendy")
dancefloor_trendy.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670496/010-disco_zxaved.png'), filename: 'dancefloor_trendy.jpg')
dancefloor_pub = Subvibe.create!(name: "dancefloor", main_vibe: "pub")
dancefloor_pub.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670496/010-disco_zxaved.png'), filename: 'dancefloor_pub.jpg')
dancefloor_sports = Subvibe.create!(name: "dancefloor", main_vibe: "sports")
dancefloor_sports.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670496/010-disco_zxaved.png'), filename: 'dancefloor_s')



puts 'Creating 5 games subvibes'
games_boogie = Subvibe.create!(name: "games", main_vibe: "boogie")
games_boogie.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670496/012-target_g0otlg.png'), filename: 'games_boogie.jpg')
games_intimate = Subvibe.create!(name: "games", main_vibe: "intimate")
games_intimate.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670496/012-target_g0otlg.png'), filename: 'games_intimate.jpg')
games_trendy = Subvibe.create!(name: "games", main_vibe: "trendy")
games_trendy.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670496/012-target_g0otlg.png'), filename: 'games_trendy.jpg')
games_pub = Subvibe.create!(name: "games", main_vibe: "pub")
games_pub.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670496/012-target_g0otlg.png'), filename: 'games_pub.jpg')
games_sports = Subvibe.create!(name: "games", main_vibe: "sports")
games_sports.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670496/012-target_g0otlg.png'), filename: 'games_sports.jpg')



puts 'Creating 5 tapas subvibes'
tapas_boogie = Subvibe.create!(name: "tapas", main_vibe: "boogie")
tapas_boogie.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670496/011-tapas_ozclgb.png'), filename: 'tapas_boogie.jpg')
tapas_intimate = Subvibe.create!(name: "tapas", main_vibe: "intimate")
tapas_intimate.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670496/011-tapas_ozclgb.png'), filename: 'tapas_intimate.jpg')
tapas_trendy = Subvibe.create!(name: "tapas", main_vibe: "trendy")
tapas_trendy.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670496/011-tapas_ozclgb.png'), filename: 'tapas_trendy.jpg')
tapas_pub = Subvibe.create!(name: "tapas", main_vibe: "pub")
tapas_pub.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670496/011-tapas_ozclgb.png'), filename: 'tapas_pub.jpg')
tapas_sports = Subvibe.create!(name: "tapas", main_vibe: "sports")
tapas_sports.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670496/011-tapas_ozclgb.png'), filename: 'tapas_sports.jpg')


puts 'Creating 5 western subvibes'
western_boogie = Subvibe.create!(name: "western", main_vibe: "boogie")
western_boogie.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670496/013-cowboy_bv44xn.png'), filename: 'western_boogie.jpg')
western_intimate = Subvibe.create!(name: "western", main_vibe: "intimate")
western_intimate.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670496/013-cowboy_bv44xn.png'), filename: 'western_intimate.jpg')
western_trendy = Subvibe.create!(name: "western", main_vibe: "trendy")
western_trendy.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670496/013-cowboy_bv44xn.png'), filename: 'western_trendy.jpg')
western_pub = Subvibe.create!(name: "western", main_vibe: "pub")
western_pub.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670496/013-cowboy_bv44xn.png'), filename: 'western_pub.jpg')
western_sports = Subvibe.create!(name: "western", main_vibe: "sports")
western_sports.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670496/013-cowboy_bv44xn.png'), filename: 'western_sports.jpg')

puts 'Creating 5 kareoke subvibes'
kareoke_boogie = Subvibe.create!(name: "kareoke", main_vibe: "boogie")
kareoke_boogie.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670500/014-karaoke_y2vpmx.png'), filename: 'kareoke_boogie.jpg')
kareoke_intimate = Subvibe.create!(name: "kareoke", main_vibe: "intimate")
kareoke_intimate.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670500/014-karaoke_y2vpmx.png'), filename: 'kareoke_intimate.jpg')
kareoke_trendy = Subvibe.create!(name: "kareoke", main_vibe: "trendy")
kareoke_trendy.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670500/014-karaoke_y2vpmx.png'), filename: 'kareoke_trendy.jpg')
kareoke_pub = Subvibe.create!(name: "kareoke", main_vibe: "pub")
kareoke_pub.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670500/014-karaoke_y2vpmx.png'), filename: 'kareoke_pub.jpg')
kareoke_sports = Subvibe.create!(name: "kareoke", main_vibe: "sports")
kareoke_sports.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670500/014-karaoke_y2vpmx.png'), filename: 'kareoke_sports.jpg')

puts 'Creating 20 bars'
sneaky_sip = Bar.create!(name: "Sneaky Sip", price: "€", opening_time: 11, closing_time: 23, address: "10 Regal Close, London")
sneaky_sip.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717603849/sneaky_sip_nforib.jpg'), filename: 'sneakysip.jpg')
oasis = Bar.create!(name: "Oasis", price: "€", opening_time: 11, closing_time: 23, address: "7 Station Street, London")
oasis.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717604000/oasis_yqkwa6.jpg'), filename: 'oasis.jpg')
copacabana = Bar.create!(name: "Copacabana", price: "€€", opening_time: 12, closing_time: 23, address: "Flat 76, Birchington House, Pembury Road, London")
copacabana.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717603789/cpacabana_fwogya.jpg'), filename: 'copacabana.jpg')
boa_vista = Bar.create!(name: "Boa Vista", price: "€€€", opening_time: 14, closing_time: 24, address: "Apartment 5405, 1 Park Drive, London")
boa_vista.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717675816/helena-yankovska-7EbGkOm8pWM-unsplash_sxqk7z.jpg'), filename: 'boavista.jpg')
java = Bar.create!(name: "Java", price: "€", opening_time: 12, closing_time: 23, address: "11 Falmouth Street, London")
java.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717675825/tai-s-captures-tebQPl7JgA8-unsplash_pon3pj.jpg'), filename: 'java.jpg')
red_frog = Bar.create!(name: "Red Frog", price: "€€", opening_time: 12, closing_time: 22, address: "20 St Georges Road, London")
red_frog.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717675262/zero-take-2zimLZ7aDOM-unsplash_vb92dh.jpg'), filename: 'red_frog.jpg')

cinco = Bar.create!(name: "Cinco", price: "€", opening_time: 13, closing_time: 23, address: "Apartment 704, Catalina House, 4 Canter Way, London")
cinco.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717675261/theme-photos-kPHYuzqoaz0-unsplash_nlop0j.jpg'), filename: 'cinco.jpg')
secret_garden = Bar.create!(name: "Secret Garden", price: "€€", opening_time: 11, closing_time: 20, address: "37 Malvern Avenue, London")
secret_garden.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717675259/steve-allison-LRx-y4bRdMA-unsplash_aivdwx.jpg'), filename: 'secret_garden.jpg')
uni_cocktail = Bar.create!(name: "Uni Cocktail", price: "€", opening_time: 11, closing_time: 20, address: "34 Queens Road, Walthamstow")
uni_cocktail.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717675257/stanislav-ivanitskiy-j5SwUbcgeyA-unsplash_gszbxb.jpg'), filename: 'uni_cocktail.jpg')
park_bar = Bar.create!(name: "Park Rooftop", price: "€", opening_time: 11, closing_time: 20, address: "30 Carmen Street, London")
park_bar.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717675255/nikola-jovanovic-QGPmWrclELg-unsplash_bdl25y.jpg'), filename: 'park_bar.jpg')
the_couch = Bar.create!(name: "The Couch", price: "€€€", opening_time: 11, closing_time: 20, address: "712C Lea Bridge Road, London")
the_couch.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717675255/sergio-alves-santos-PeDrafNlY2Y-unsplash_wz5bfe.jpg'), filename: 'the_couch.jpg')
lisboario = Bar.create!(name: "Lisboario", price: "€€", opening_time: 11, closing_time: 20, address: "5 Belle Vue Road, London")
lisboario.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717675248/denys-nevozhai-LVuwYF-7POM-unsplash_ff8opv.jpg'), filename: 'lisboario.jpg')
ogilins_irish_pub = Bar.create!(name: "Ogilins Irish Pub", price: "€", opening_time: 11, closing_time: 20, address: "27 Leather Gardens, London")
ogilins_irish_pub.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717675248/edward-howell-55bQ7g3ZlQU-unsplash_omrdjs.jpg'), filename: 'ogilins_irish_pub.jpg')
british_bar_lisboa = Bar.create!(name: "British Bar Lisboa", price: "€€", opening_time: 11, closing_time: 20, address: "Flat 7, Linnell House, 50 Folgate Street, London")
british_bar_lisboa.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717675248/clem-onojeghuo-zlABb6Gke24-unsplash_rqqxvo.jpg'), filename: 'british_bar_lisboa.jpg')
the_queen_ale = Bar.create!(name: "The Queen Ale", price: "€€€", opening_time: 11, closing_time: 20, address: "35 Beauchamp Road, London")
the_queen_ale.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717675248/carson-masterson-yuxr5ohFB-g-unsplash_lwxrty.jpg'), filename: 'the_queen_ale.jpg')

sky_bar = Bar.create!(name: "Sky Bar", price: "€", opening_time: 11, closing_time: 20, address: "Flat 503, Dress Makers House, 20 Blair Street, London")
sky_bar.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717675247/aleksandr-popov-3-Kh6XSu9XQ-unsplash_trrnfo.jpg'), filename: 'sky_bar.jpg')
a_capela = Bar.create!(name: "A Capela", price: "€€", opening_time: 11, closing_time: 20, address: "Car Park, Snaresbrook Station, Station Approach, Wanstead")
a_capela.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717675247/adam-wilson-6UIonphZA5o-unsplash_mmc3dh.jpg'), filename: 'a_capela.jpg')
principe_real = Bar.create!(name: "Principe Real", price: "€", opening_time: 11, closing_time: 20, address: "13 Holborn Road, London")
principe_real.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717675246/adam-jaime-dmkmrNptMpw-unsplash_qhrh9x.jpg'), filename: 'principe_real.jpg')
pavilhao_chines = Bar.create!(name: "Pavilhao Chines", price: "€€", opening_time: 11, closing_time: 20, address: "Flat 9, 440 North Woolwich Road, Silvertown")
pavilhao_chines.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717675247/aleksandr-popov-2GNBoMgKYEo-unsplash_nvs8dd.jpg'), filename: 'pavilhao.jpg')
v_rooftop = Bar.create!(name: "V Rooftop", price: "€", opening_time: 11, closing_time: 20, address: "11 Cranbourne Avenue, London")
v_rooftop.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717675845/louis-hansel-WCm4dFvZnMM-unsplash_covxn8.jpg'), filename: 'v_rooftop.jpg')

big_T = Bar.create!(name: "Big T", price: "€€", opening_time: 13, closing_time: 23, address: "Flat 4, Chestnut House, 37 Sycamore Avenue, London")
big_T.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717603849/sneaky_sip_nforib.jpg'), filename: 'sneakysip.jpg')
sailors_bar = Bar.create!(name: "Sailors Bar", price: "€", opening_time: 11, closing_time: 24, address: "Flat 21, Newton House, Cornwall Street, London")
sailors_bar.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717675255/sergio-alves-santos-PeDrafNlY2Y-unsplash_wz5bfe.jpg'), filename: 'the_couch.jpg')
bar_da_ucs = Bar.create!(name: "Bar da UCS", price: "€", opening_time: 11, closing_time: 23, address: "Mill Lodge, Mill Lane, London")
bar_da_ucs.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717675248/clem-onojeghuo-zlABb6Gke24-unsplash_rqqxvo.jpg'), filename: 'british_bar_lisboa.jpg')
cocas_place_bar = Bar.create!(name: "Cocas Place Bar", price: "€€", opening_time: 12, closing_time: 22, address: "29 St Bartholomews Road, London")
cocas_place_bar.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717675247/aleksandr-popov-3-Kh6XSu9XQ-unsplash_trrnfo.jpg'), filename: 'sky_bar.jpg')
bar_1143 = Bar.create!(name: "Bar 1143", price: "€€", opening_time: 11, closing_time: 24, address: "Flat 5, 81 Rainhill Way, London")
bar_1143.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717675246/adam-jaime-dmkmrNptMpw-unsplash_qhrh9x.jpg'), filename: 'principe_real.jpg')
corkies = Bar.create!(name: "Corkies", price: "€€€", opening_time: 14, closing_time: 23, address: "Flat 1, 1 Feather Mews, London")
corkies.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717675845/louis-hansel-WCm4dFvZnMM-unsplash_covxn8.jpg'), filename: 'v_rooftop.jpg')
zeinot_bar = Bar.create!(name: "Zeinot", price: "€", opening_time: 12, closing_time: 21, address: "Flat 10, Gayton House, Chiltern Road, London")
zeinot_bar.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717675247/aleksandr-popov-2GNBoMgKYEo-unsplash_nvs8dd.jpg'), filename: 'pavilhao.jpg')
templarios_bar = Bar.create!(name: "Templarios", price: "€€", opening_time: 11, closing_time: 23, address: "Unit 8, 58 Bethnal Green Road, London")
templarios_bar.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717675816/helena-yankovska-7EbGkOm8pWM-unsplash_sxqk7z.jpg'), filename: 'boavista.jpg')
shisha_bar_lisboa = Bar.create!(name: "Shisha Bar Lisboa ", price: "€€", opening_time: 11, closing_time: 23, address: "3 Athlone Close, London ")
shisha_bar_lisboa.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717675816/helena-yankovska-7EbGkOm8pWM-unsplash_sxqk7z.jpg'), filename: 'boavista.jpg')
mama_shelter_lisboa = Bar.create!(name: "Mama Shelter Lisboa", price: "€", opening_time: 11, closing_time: 23, address: "68 Coopers Close, London")
mama_shelter_lisboa.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717675248/clem-onojeghuo-zlABb6Gke24-unsplash_rqqxvo.jpg'), filename: 'british_bar_lisboa.jpg')
balzac = Bar.create!(name: "Balzac", price: "€", opening_time: 11, closing_time: 20, address: "10 Radley Square, London")
balzac.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717675257/stanislav-ivanitskiy-j5SwUbcgeyA-unsplash_gszbxb.jpg'), filename: 'uni_cocktail.jpg')
cockpit_quiosque = Bar.create!(name: "Cockpit Quiosque", price: "€", opening_time: 11, closing_time: 20, address: "32 Richmond Avenue, London")
cockpit_quiosque.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717675845/louis-hansel-WCm4dFvZnMM-unsplash_covxn8.jpg'), filename: 'v_rooftop.jpg')
fadarious_bar = Bar.create!(name: "Fadarius", price: "€", opening_time: 11, closing_time: 20, address: "535 Roman Road, London")
fadarious_bar.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717675246/adam-jaime-dmkmrNptMpw-unsplash_qhrh9x.jpg'), filename: 'principe_real.jpg')
my_house_alvalade = Bar.create!(name: "My House Alvalade", price: "€€", opening_time: 11, closing_time: 24, address: "Flat 5, Firewatch Court, 2 Candle Street, London")
my_house_alvalade.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717675246/adam-jaime-dmkmrNptMpw-unsplash_qhrh9x.jpg'), filename: 'principe_real.jpg')
torto_bistro_bar = Bar.create!(name: "Torto Bistro Bar", price: "€", opening_time: 11, closing_time: 20, address: "Flat 1, Riemann Court, 44 Bow Common Lane, London")
torto_bistro_bar.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717675845/louis-hansel-WCm4dFvZnMM-unsplash_covxn8.jpg'), filename: 'v_rooftop.jpg')


puts 'Creating 3 bar subvibes for every bar'

Bar.all.each do |bar|
  subvibes = Subvibe.all.shuffle
  subvibes.first(3).each do |subvibe|
    BarSubvibe.create!(bar: bar, subvibe: subvibe)
  end
end


puts 'Creating 5 user subvibes for every user'

User.all.each do |user|
  subvibes = Subvibe.all.shuffle
  subvibes.first(5).each do |subvibe|
    UserSubvibe.create!(user: user, subvibe: subvibe)
  end
end

puts 'creating 5 favourites for all users'
User.all.each do |user|
  5.times do
    bar = Bar.all.sample
    user.favorite(bar)
  end
end
jonas.favorite(my_house_alvalade)

puts 'Done!'
