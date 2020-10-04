# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or create!d alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create!([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create!(name: 'Luke', movie: movies.first)

Genre.destroy_all
Location.destroy_all
User.destroy_all
Message.destroy_all
Event.destroy_all
TalentProfile.destroy_all
Gig.destroy_all
Registration.destroy_all

Genre.create!(name: 'Video Games')
Genre.create!(name: 'Comics')
Genre.create!(name: 'Crafts')

Location.create!(name: 'Vancouver')
Location.create!(name: 'Victoria')
Location.create!(name: 'Montreal')
Location.create!(name: 'Toronto')
Location.create!(name: 'Calgary')

User.create!(name: 'Jimothy Muirs', email: 'jimothy@cool.com', location_id: 1)
User.create!(name: 'Nicola Jones', email: 'nicola@cool.com', location_id: 2)
User.create!(name: 'Prudence Catwell', email: 'prudence@cats.com', location_id: 3)
User.create!(name: 'Thomas Smith', email: 'thomas@cool.com', location_id: 1)
User.create!(name: 'Sally Baker', email: 'sally@cool.com', location_id: 1)
user = User.new(name: 'System', email: 'support@eventfill.com', location_id: 1)
user.id = 0
user.save!

Message.create!(sender_id: 1, recipient_id: 2, content: 'Hello', read_by_recipient: true)
Message.create!(sender_id: 2, recipient_id: 1, content: 'Hey!!', read_by_recipient: true)
Message.create!(sender_id: 1, recipient_id: 2, content: 'Bye!', read_by_recipient: false)
Message.create!(sender_id: 2, recipient_id: 1, content: 'Hello')
Message.create!(sender_id: 3, recipient_id: 2, content: 'Sup', read_by_recipient: true)
Message.create!(sender_id: 3, recipient_id: 1, content: 'Perform?')
Message.create!(sender_id: 2, recipient_id: 4, content: 'Commission?')

Event.create!(user_id: 1, genre_id: 1, location_id: 1, image_url: 'https://i.pcmag.com/imagery/lineups/06PiprC5eiYhlpaNS6N0sbP-1.1569492872.fit_lim.fit_lim.size_956x99999.jpg', name: 'GameCon Vancouver 2020', start: '2020-10-13 12:00:00', end: '2020-10-13 22:00:00', max_attendees: 200, description: 'Come to this!', accepting_talent: true)
Event.create!(user_id: 1, genre_id: 3, location_id: 1, image_url: 'https://www.thespruce.com/thmb/Pot7VQ8sCBiR4virPcehRZYbGq8=/960x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/-assortment-of-scrapbooking-tools-including-colored-paper--pens--and-scissors-click-below-for-more-of-my-scrapbooking-and-arts-and-crafts-images--936822170-ed08f5a6b9d74a0191f16a6f3dd5a272.jpg', name: 'CraftCon Vancouver 2020', start: '2020-09-20 10:00:00', end: '2020-09-20 19:00:00', max_attendees: 120, description: 'Come to this also!', accepting_talent: false)

TalentProfile.create!(user_id: 1, genre_id: 1, location_id: 1, image_url: 'https://image.shutterstock.com/mosaic_250/2797510/600200732/stock-photo-portrait-of-happy-fashionable-handsome-man-in-jeans-shirt-crossing-hands-and-look-at-camera-600200732.jpg', description: 'Game designer', personal_link: 'me@games.com', open_for_booking: true, name: 'JimothyGames')
TalentProfile.create!(user_id: 1, genre_id: 2, location_id: 1, image_url: 'https://image.shutterstock.com/mosaic_250/2797510/600200732/stock-photo-portrait-of-happy-fashionable-handsome-man-in-jeans-shirt-crossing-hands-and-look-at-camera-600200732.jpg', description: 'Comic artist', personal_link: 'me@comics.com', open_for_booking: true, name: 'JimothyComics')
TalentProfile.create!(user_id: 3, genre_id: 3, location_id: 3, image_url: 'https://static01.nyt.com/images/2019/09/04/business/04chinaclone-01/04chinaclone-01-videoSixteenByNineJumbo1600.jpg', description: 'Crafter', personal_link: 'me@crafts.com', open_for_booking: false, name: 'Prudence Craftwell')

Gig.create!(talent_profile_id: 2, event_id: 1, description: 'Performing, ya!', accepted: true, rejected: nil)
Gig.create!(talent_profile_id: 3, event_id: 2, description: 'Drawings galore~', accepted: nil, rejected: true)

Registration.create!(user_id: 2, event_id: 1)
Registration.create!(user_id: 2, event_id: 2)
Registration.create!(user_id: 3, event_id: 1)
Registration.create!(user_id: 4, event_id: 1)
Registration.create!(user_id: 5, event_id: 1)
Registration.create!(user_id: 5, event_id: 2)
