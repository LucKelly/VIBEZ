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
@luc.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670504/021-man-1_boayev.png'), filename: 'maleglasses.jpg')
@feline = User.create!(username: "Feline123", email: "feline@test.com", password: "password")
@feline.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670500/017-woman_vvjguy.png'), filename: 'blondewoman.jpg')
@aureo = User.create!(username: "Aureo123", email: "aureo@test.com", password: "password")
@aureo.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717671824/man_hihrl3.png'), filename: 'maleblack.jpg')
@jonas = User.create!(username: "Jonas123", email: "jonas@test.com", password: "password")
@jonas.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670503/018-man_xqsuie.png'), filename: 'male.jpg')
@jeff = User.create!(username: "JazzyJeff123", email: "jj@test.com", password: "password")
@jeff.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670504/020-woman-2_mllshs.png'), filename: 'woman2.jpg')



puts 'Creating 5 outside subvibes'
@outside_trendy = Subvibe.create!(name: "outside trendy", main_vibe: "trendy")
@outside_trendy.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670492/001-sun_zchdhi.png'), filename: 'outsidetrendy.jpg')
@outside_boogie = Subvibe.create!(name: "outside boogie", main_vibe: "boogie")
@outside_boogie.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670492/001-sun_zchdhi.png'), filename: 'outsideboogie.jpg')
@outside_intimate = Subvibe.create!(name: "outside intimate", main_vibe: "intimate")
@outside_intimate.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670492/001-sun_zchdhi.png'), filename: 'outsideintimate.jpg')
@outside_pub = Subvibe.create!(name: "outside pub", main_vibe: "pub")
@outside_pub.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670492/001-sun_zchdhi.png'), filename: 'outsidepub.jpg')
@outside_sports = Subvibe.create!(name: "outside sports", main_vibe: "sports")
@outside_sports.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670492/001-sun_zchdhi.png'), filename: 'outsidesports.jpg')


puts 'Creating 5 rooftop subvibes'
@rooftop_boogie = Subvibe.create!(name: "rooftop boogie", main_vibe: "boogie")
@rooftop_boogie.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670492/002-rooftop_aigzid.png'), filename: 'rooftop_boogie.jpg')
@rooftop_intimate = Subvibe.create!(name: "rooftop intimate", main_vibe: "intimate")
@rooftop_intimate.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670492/002-rooftop_aigzid.png'), filename: 'rooftop_intimate.jpg')
@rooftop_trendy = Subvibe.create!(name: "rooftop trendy", main_vibe: "trendy")
@rooftop_trendy.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670492/002-rooftop_aigzid.png'), filename: 'rooftop_trendy.jpg')
@rooftop_pub = Subvibe.create!(name: "rooftop pub", main_vibe: "pub")
@rooftop_pub.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670492/002-rooftop_aigzid.png'), filename: 'rooftop_pub.jpg')
@rooftop_sports = Subvibe.create!(name: "rooftop sports", main_vibe: "sports")
@rooftop_sports.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670492/002-rooftop_aigzid.png'), filename: 'rooftop_sports.jpg')


puts 'Creating 5 speakeasy subvibes'
@speakeasy_boogie = Subvibe.create!(name: "speakeasy boogie", main_vibe: "boogie")
@speakeasy_boogie.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670492/003-lips_yk7y7s.png'), filename: 'speakeasy_boogie.jpg')
@speakeasy_intimate = Subvibe.create!(name: "speakeasy intimate", main_vibe: "intimate")
@speakeasy_intimate.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670492/003-lips_yk7y7s.png'), filename: 'speakeasy_intimate.jpg')
@speakeasy_trendy = Subvibe.create!(name: "speakeasy trendy", main_vibe: "trendy")
@speakeasy_trendy.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670492/003-lips_yk7y7s.png'), filename: 'speakeasy_trendy.jpg')
@speakeasy_pub = Subvibe.create!(name: "speakeasy pub", main_vibe: "pub")
@speakeasy_pub.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670492/003-lips_yk7y7s.png'), filename: 'speakeasy_pub.jpg')
@speakeasy_sports = Subvibe.create!(name: "speakeasy sports", main_vibe: "sports")
@speakeasy_sports.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670492/003-lips_yk7y7s.png'), filename: 'speakeasy_sports.jpg')


puts 'Creating 5 tropical subvibes'
@tropical_boogie = Subvibe.create!(name: "tropical boogie", main_vibe: "boogie")
@tropical_boogie.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670492/004-palm-tree_jkvqds.png'), filename: 'tropical_boogie.jpg')
@tropical_intimate = Subvibe.create!(name: "tropical intimate", main_vibe: "intimate")
@tropical_intimate.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670492/004-palm-tree_jkvqds.png'), filename: 'tropical_intimate.jpg')
@tropical_trendy = Subvibe.create!(name: "tropical trendy", main_vibe: "trendy")
@tropical_trendy.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670492/004-palm-tree_jkvqds.png'), filename: 'tropical_trendy.jpg')
@tropical_pub = Subvibe.create!(name: "tropical pub", main_vibe: "pub")
@tropical_pub.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670492/004-palm-tree_jkvqds.png'), filename: 'tropical_pub.jpg')
@tropical_sports = Subvibe.create!(name: "tropical sports", main_vibe: "sports")
@tropical_sports.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670492/004-palm-tree_jkvqds.png'), filename: 'tropical_sports.jpg')



puts 'Creating 5 pints subvibes'
@pints_boogie = Subvibe.create!(name: "pints boogie", main_vibe: "boogie")
@pints_boogie.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670492/005-beer_zaknqf.png'), filename: 'pints_boogie.jpg')
@pints_intimate = Subvibe.create!(name: "pints intimate", main_vibe: "intimate")
@pints_intimate.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670492/005-beer_zaknqf.png'), filename: 'pints_intimate.jpg')
@pints_trendy = Subvibe.create!(name: "pints trendy", main_vibe: "trendy")
@pints_trendy.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670492/005-beer_zaknqf.png'), filename: 'pints_trendy.jpg')
@pints_pub = Subvibe.create!(name: "pints pub", main_vibe: "pub")
@pints_pub.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670492/005-beer_zaknqf.png'), filename: 'pints_pub.jpg')
@pints_sports = Subvibe.create!(name: "pints sports", main_vibe: "sports")
@pints_sports.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670492/005-beer_zaknqf.png'), filename: 'pints_sports.jpg')




puts 'Creating 5 cocktails subvibes'
@cocktails_boogie = Subvibe.create!(name: "cocktails boogie", main_vibe: "boogie")
@cocktails_boogie.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670493/006-cup_povdyc.png'), filename: 'cocktails_boogie.jpg')
@cocktails_intimate = Subvibe.create!(name: "cocktails intimate", main_vibe: "intimate")
@cocktails_intimate.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670493/006-cup_povdyc.png'), filename: 'cocktails_intimate.jpg')
@cocktails_trendy = Subvibe.create!(name: "cocktails trendy", main_vibe: "trendy")
@cocktails_trendy.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670493/006-cup_povdyc.png'), filename: 'cocktails_trendy.jpg')
@cocktails_pub = Subvibe.create!(name: "cocktails pub", main_vibe: "pub")
@cocktails_pub.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670493/006-cup_povdyc.png'), filename: 'cocktails_pub.jpg')
@cocktails_sports = Subvibe.create!(name: "cocktails sports", main_vibe: "sports")
@cocktails_sports.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670493/006-cup_povdyc.png'), filename: 'cocktails_sports.jpg')




puts 'Creating 5 live_music subvibes'
@live_music_boogie = Subvibe.create!(name: "live_music boogie", main_vibe: "boogie")
@live_music_boogie.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670493/007-live-music_kxeju5.png'), filename: 'live_music_boogie.jpg')
@live_music_intimate = Subvibe.create!(name: "live_music intimate", main_vibe: "intimate")
@live_music_intimate.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670493/007-live-music_kxeju5.png'), filename: 'live_music_intimate.jpg')
@live_music_trendy = Subvibe.create!(name: "live_music trendy", main_vibe: "trendy")
@live_music_trendy.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670493/007-live-music_kxeju5.png'), filename: 'live_music_trendy.jpg')
@live_music_pub = Subvibe.create!(name: "live_music pub", main_vibe: "pub")
@live_music_pub.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670493/007-live-music_kxeju5.png'), filename: 'live_music_pub.jpg')
@live_music_sports = Subvibe.create!(name: "live_music sports", main_vibe: "sports")
@live_music_sports.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670493/007-live-music_kxeju5.png'), filename: 'live_music_sports.jpg')



puts 'Creating 5 ambient_music subvibes'
@ambient_music_boogie = Subvibe.create!(name: "ambient_music boogie", main_vibe: "boogie")
@ambient_music_boogie.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670500/015-romantic-music_dcr2lh.png'), filename: 'ambient_music_boogie.jpg')
@ambient_music_intimate = Subvibe.create!(name: "ambient_music intimate", main_vibe: "intimate")
@ambient_music_intimate.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670500/015-romantic-music_dcr2lh.png'), filename: 'ambient_music_intimate.jpg')
@ambient_music_trendy = Subvibe.create!(name: "ambient_music trendy", main_vibe: "trendy")
@ambient_music_trendy.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670500/015-romantic-music_dcr2lh.png'), filename: 'ambient_music_trendy.jpg')
@ambient_music_pub = Subvibe.create!(name: "ambient_music pub", main_vibe: "pub")
@ambient_music_pub.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670500/015-romantic-music_dcr2lh.png'), filename: 'ambient_music_pub.jpg')
@ambient_music_sports = Subvibe.create!(name: "ambient_music sports", main_vibe: "sports")
@ambient_music_sports.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670500/015-romantic-music_dcr2lh.png'), filename: 'ambient_music_sports.jpg')



puts 'Creating 5 DJ_music subvibes'
@DJ_music_boogie = Subvibe.create!(name: "DJ_music boogie", main_vibe: "boogie")
@DJ_music_boogie.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670493/008-dj_qyovv4.png'), filename: 'DJ_music_boogie.jpg')
@DJ_music_intimate = Subvibe.create!(name: "DJ_music intimate", main_vibe: "intimate")
@DJ_music_intimate.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670493/008-dj_qyovv4.png'), filename: 'DJ_music_intimate.jpg')
@DJ_music_trendy = Subvibe.create!(name: "DJ_music trendy", main_vibe: "trendy")
@DJ_music_trendy.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670493/008-dj_qyovv4.png'), filename: 'DJ_music_trendy.jpg')
@DJ_music_pub = Subvibe.create!(name: "DJ_music pub", main_vibe: "pub")
@DJ_music_pub.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670493/008-dj_qyovv4.png'), filename: 'DJ_music_pub.jpg')
@DJ_music_sports = Subvibe.create!(name: "DJ_music sports", main_vibe: "sports")
@DJ_music_sports.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670493/008-dj_qyovv4.png'), filename: 'DJ_music_sports.jpg')



puts 'Creating 5 seating subvibes'
@seating_boogie = Subvibe.create!(name: "seating boogie", main_vibe: "boogie")
@seating_boogie.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670496/009-waiting-room_hf4pep.png'), filename: 'seating_boogie.jpg')
@seating_intimate = Subvibe.create!(name: "seating intimate", main_vibe: "intimate")
@seating_intimate.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670496/009-waiting-room_hf4pep.png'), filename: 'seating_intimate.jpg')
@seating_trendy = Subvibe.create!(name: "seating trendy", main_vibe: "trendy")
@seating_trendy.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670496/009-waiting-room_hf4pep.png'), filename: 'seating_trendy.jpg')
@seating_pub = Subvibe.create!(name: "seating pub", main_vibe: "pub")
@seating_pub.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670496/009-waiting-room_hf4pep.png'), filename: 'seating_pub.jpg')
@seating_sports = Subvibe.create!(name: "seating sports", main_vibe: "sports")
@seating_sports.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670496/009-waiting-room_hf4pep.png'), filename: 'seating_sports.jpg')



puts 'Creating 5 dancefloor subvibes'
@dancefloor_boogie = Subvibe.create!(name: "dancefloor boogie", main_vibe: "boogie")
@dancefloor_boogie.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670496/010-disco_zxaved.png'), filename: 'dancefloor_boogie.jpg')
@dancefloor_intimate = Subvibe.create!(name: "dancefloor intimate", main_vibe: "intimate")
@dancefloor_intimate.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670496/010-disco_zxaved.png'), filename: 'dancefloor_intimate.jpg')
@dancefloor_trendy = Subvibe.create!(name: "dancefloor trendy", main_vibe: "trendy")
@dancefloor_trendy.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670496/010-disco_zxaved.png'), filename: 'dancefloor_trendy.jpg')
@dancefloor_pub = Subvibe.create!(name: "dancefloor pub", main_vibe: "pub")
@dancefloor_pub.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670496/010-disco_zxaved.png'), filename: 'dancefloor_pub.jpg')
@dancefloor_sports = Subvibe.create!(name: "dancefloor sports", main_vibe: "sports")
@dancefloor_sports.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670496/010-disco_zxaved.png'), filename: 'dancefloor_s')



puts 'Creating 5 games subvibes'
@games_boogie = Subvibe.create!(name: "games boogie", main_vibe: "boogie")
@games_boogie.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670496/012-target_g0otlg.png'), filename: 'games_boogie.jpg')
@games_intimate = Subvibe.create!(name: "games intimate", main_vibe: "intimate")
@games_intimate.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670496/012-target_g0otlg.png'), filename: 'games_intimate.jpg')
@games_trendy = Subvibe.create!(name: "games trendy", main_vibe: "trendy")
@games_trendy.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670496/012-target_g0otlg.png'), filename: 'games_trendy.jpg')
@games_pub = Subvibe.create!(name: "games pub", main_vibe: "pub")
@games_pub.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670496/012-target_g0otlg.png'), filename: 'games_pub.jpg')
@games_sports = Subvibe.create!(name: "games sports", main_vibe: "sports")
@games_sports.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670496/012-target_g0otlg.png'), filename: 'games_sports.jpg')



puts 'Creating 5 tapas subvibes'
@tapas_boogie = Subvibe.create!(name: "tapas boogie", main_vibe: "boogie")
@tapas_boogie.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670496/011-tapas_ozclgb.png'), filename: 'tapas_boogie.jpg')
@tapas_intimate = Subvibe.create!(name: "tapas intimate", main_vibe: "intimate")
@tapas_intimate.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670496/011-tapas_ozclgb.png'), filename: 'tapas_intimate.jpg')
@tapas_trendy = Subvibe.create!(name: "tapas trendy", main_vibe: "trendy")
@tapas_trendy.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670496/011-tapas_ozclgb.png'), filename: 'tapas_trendy.jpg')
@tapas_pub = Subvibe.create!(name: "tapas pub", main_vibe: "pub")
@tapas_pub.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670496/011-tapas_ozclgb.png'), filename: 'tapas_pub.jpg')
@tapas_sports = Subvibe.create!(name: "tapas sports", main_vibe: "sports")
@tapas_sports.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670496/011-tapas_ozclgb.png'), filename: 'tapas_sports.jpg')


puts 'Creating 5 western subvibes'
@western_boogie = Subvibe.create!(name: "western boogie", main_vibe: "boogie")
@western_boogie.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670496/013-cowboy_bv44xn.png'), filename: 'western_boogie.jpg')
@western_intimate = Subvibe.create!(name: "western intimate", main_vibe: "intimate")
@western_intimate.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670496/013-cowboy_bv44xn.png'), filename: 'western_intimate.jpg')
@western_trendy = Subvibe.create!(name: "western trendy", main_vibe: "trendy")
@western_trendy.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670496/013-cowboy_bv44xn.png'), filename: 'western_trendy.jpg')
@western_pub = Subvibe.create!(name: "western pub", main_vibe: "pub")
@western_pub.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670496/013-cowboy_bv44xn.png'), filename: 'western_pub.jpg')
@western_sports = Subvibe.create!(name: "western sports", main_vibe: "sports")
@western_sports.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670496/013-cowboy_bv44xn.png'), filename: 'western_sports.jpg')



puts 'Creating 5 kareoke subvibes'
@kareoke_boogie = Subvibe.create!(name: "kareoke boogie", main_vibe: "boogie")
@kareoke_boogie.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670500/014-karaoke_y2vpmx.png'), filename: 'kareoke_boogie.jpg')
@kareoke_intimate = Subvibe.create!(name: "kareoke intimate", main_vibe: "intimate")
@kareoke_intimate.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670500/014-karaoke_y2vpmx.png'), filename: 'kareoke_intimate.jpg')
@kareoke_trendy = Subvibe.create!(name: "kareoke trendy", main_vibe: "trendy")
@kareoke_trendy.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670500/014-karaoke_y2vpmx.png'), filename: 'kareoke_trendy.jpg')
@kareoke_pub = Subvibe.create!(name: "kareoke pub", main_vibe: "pub")
@kareoke_pub.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670500/014-karaoke_y2vpmx.png'), filename: 'kareoke_pub.jpg')
@kareoke_sports = Subvibe.create!(name: "kareoke sports", main_vibe: "sports")
@kareoke_sports.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717670500/014-karaoke_y2vpmx.png'), filename: 'kareoke_sports.jpg')



puts 'Creating 20 bars'
@sneaky_sip = Bar.create!(name: "sneaky_sip", price: "€", opening_time: 11, closing_time: 20, address: "R. Gustavo de Matos Sequeira 42A, 1250-120 Lisboa")
@sneaky_sip.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717603849/sneaky_sip_nforib.jpg'), filename: 'sneakysip.jpg')
@oasis = Bar.create!(name: "oasis", price: "€", opening_time: 11, closing_time: 20, address: "R. Nova do Carvalho 48, 1200-372 Lisboa")
@oasis.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717604000/oasis_yqkwa6.jpg'), filename: 'oasis.jpg')
@copacabana = Bar.create!(name: "copacabana", price: "€", opening_time: 11, closing_time: 20, address: "R. da Atalaia 91, 1200-043 Lisboa")
@copacabana.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717603789/cpacabana_fwogya.jpg'), filename: 'copacabana.jpg')
@boa_vista = Bar.create!(name: "boa_vista", price: "€", opening_time: 11, closing_time: 20, address: "Rua da Boavista 16, 1200-275 Lisboa")
@boa_vista.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717675816/helena-yankovska-7EbGkOm8pWM-unsplash_sxqk7z.jpg'), filename: 'boavista.jpg')
@java = Bar.create!(name: "java", price: "€", opening_time: 11, closing_time: 20, address: "Praça Dom Luís I 30, 1200-275 Lisboa")
@java.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717675825/tai-s-captures-tebQPl7JgA8-unsplash_pon3pj.jpg'), filename: 'java.jpg')
@red_frog = Bar.create!(name: "red_frog", price: "€", opening_time: 11, closing_time: 20, address: "Praça da Alegria 66b, 1250-004 Lisboa")
@red_frog.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717675262/zero-take-2zimLZ7aDOM-unsplash_vb92dh.jpg'), filename: 'red_frog.jpg')

@cinco = Bar.create!(name: "cinco", price: "€", opening_time: 11, closing_time: 20, address: "R. Ruben A. Leitão 17A, 1200-392 Lisboa")
@cinco.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717675261/theme-photos-kPHYuzqoaz0-unsplash_nlop0j.jpg'), filename: 'cinco.jpg')
@secret_garden = Bar.create!(name: "secret_garden", price: "€", opening_time: 11, closing_time: 20, address: "Largo Monte, 1170-253 Lisboa")
@secret_garden.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717675259/steve-allison-LRx-y4bRdMA-unsplash_aivdwx.jpg'), filename: 'secret_garden.jpg')
@uni_cocktail = Bar.create!(name: "uni_cocktail", price: "€", opening_time: 11, closing_time: 20, address: "Rua de O Século 204, 1250-095 Lisboa")
@uni_cocktail.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717675257/stanislav-ivanitskiy-j5SwUbcgeyA-unsplash_gszbxb.jpg'), filename: 'uni_cocktail.jpg')
@park_bar = Bar.create!(name: "park_bar", price: "€", opening_time: 11, closing_time: 20, address: "Calçada do Combro 58, 1200-123 Lisboa")
@park_bar.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717675255/nikola-jovanovic-QGPmWrclELg-unsplash_bdl25y.jpg'), filename: 'park_bar.jpg')
@the_couch = Bar.create!(name: "the_couch", price: "€", opening_time: 11, closing_time: 20, address: "R. do Alecrim 21A, 1200-014 Lisboa")
@the_couch.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717675255/sergio-alves-santos-PeDrafNlY2Y-unsplash_wz5bfe.jpg'), filename: 'the_couch.jpg')
@lisboario = Bar.create!(name: "lisboario", price: "€", opening_time: 11, closing_time: 20, address: "Cais Gás 7, 1200-109 Lisboa")
@lisboario.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717675248/denys-nevozhai-LVuwYF-7POM-unsplash_ff8opv.jpg'), filename: 'lisboario.jpg')
@ogilins_irish_pub = Bar.create!(name: "ogilins_irish_pub", price: "€", opening_time: 11, closing_time: 20, address: "R. dos Remolares 8, 1200-371 Lisboa")
@ogilins_irish_pub.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717675248/edward-howell-55bQ7g3ZlQU-unsplash_omrdjs.jpg'), filename: 'ogilins_irish_pub.jpg')
@british_bar_lisboa = Bar.create!(name: "british_bar_lisboa", price: "€", opening_time: 11, closing_time: 20, address: "R. Bernardino Costa 52, 1200-052 Lisboa")
@british_bar_lisboa.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717675248/clem-onojeghuo-zlABb6Gke24-unsplash_rqqxvo.jpg'), filename: 'british_bar_lisboa.jpg')
@the_queen_ale = Bar.create!(name: "the_queen_ale", price: "€", opening_time: 11, closing_time: 20, address: "Largo do Tab. 9, 1150-344 Lisboa")
@the_queen_ale.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717675248/carson-masterson-yuxr5ohFB-g-unsplash_lwxrty.jpg'), filename: 'the_queen_ale.jpg')
@sky_bar = Bar.create!(name: "sky_bar", price: "€", opening_time: 11, closing_time: 20, address: "Av. da Liberdade 185, 1269-050 Lisboa")
@sky_bar.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717675247/aleksandr-popov-3-Kh6XSu9XQ-unsplash_trrnfo.jpg'), filename: 'sky_bar.jpg')
@a_capela = Bar.create!(name: "a_capela", price: "€", opening_time: 11, closing_time: 20, address: "R. da Atalaia 45, 1200-043 Lisboa")
@a_capela.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717675247/adam-wilson-6UIonphZA5o-unsplash_mmc3dh.jpg'), filename: 'a_capela.jpg')
@principe_real = Bar.create!(name: "principe_real", price: "€", opening_time: 11, closing_time: 20, address: "R. Dom Pedro V 56 J, 1250-094 Lisboa")
@principe_real.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717675246/adam-jaime-dmkmrNptMpw-unsplash_qhrh9x.jpg'), filename: 'principe_real.jpg')
@pavilhao = Bar.create!(name: "pavilhao", price: "€", opening_time: 11, closing_time: 20, address: "R. Dom Pedro V 89, 1250-093 Lisboa")
@pavilhao.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717675247/aleksandr-popov-2GNBoMgKYEo-unsplash_nvs8dd.jpg'), filename: 'pavilhao.jpg')
@v_rooftop = Bar.create!(name: "v_rooftop", price: "€", opening_time: 11, closing_time: 20, address: "R. Rodrigo da Fonseca 2, 1250-191 Lisboa")
@v_rooftop.photo.attach(io: URI.open('https://res.cloudinary.com/duq1bnalm/image/upload/v1717675845/louis-hansel-WCm4dFvZnMM-unsplash_covxn8.jpg'), filename: 'v_rooftop.jpg')




puts 'Creating 15 bar subvibes and 5 favourites'

Favourite.create!(bar:@sneaky_sip,user:@luc)
Favourite.create!(bar:@sneaky_sip,user:@feline)
Favourite.create!(bar:@sneaky_sip,user:@aureo)
Favourite.create!(bar:@sneaky_sip,user:@jonas)
Favourite.create!(bar:@sneaky_sip,user:@jeff)
BarSubvibe.create!(bar: @oasis, subvibe: @kareoke_boogie)
BarSubvibe.create!(bar: @copacabana, subvibe: @tapas_boogie)
BarSubvibe.create!(bar: @boa_vista, subvibe: @DJ_music_boogie)
BarSubvibe.create!(bar: @java, subvibe: @pints_pub)
BarSubvibe.create!(bar: @red_frog, subvibe: @ambient_music_trendy)
BarSubvibe.create!(bar: @cinco, subvibe: @live_music_boogie)
BarSubvibe.create!(bar: @secret_garden, subvibe: @cocktails_intimate)
BarSubvibe.create!(bar: @uni_cocktail, subvibe: @tropical_intimate)
BarSubvibe.create!(bar: @park_bar, subvibe: @seating_intimate)
BarSubvibe.create!(bar: @the_couch, subvibe: @dancefloor_trendy)
BarSubvibe.create!(bar: @lisboario, subvibe: @western_trendy)
BarSubvibe.create!(bar: @ogilins_irish_pub, subvibe: @tapas_sports)
BarSubvibe.create!(bar: @british_bar_lisboa, subvibe: @kareoke_sports)
BarSubvibe.create!(bar: @the_queen_ale, subvibe: @games_pub)

puts 'Done!'
