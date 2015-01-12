# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Room.destroy_all
Document.destroy_all

# Room.create name: "Room 1", subject: "Programming"
# Room.create name: "Room 2", subject: "Reading"
# Room.create name: "Room 3", subject: "Playing"
# Room.create name: "Room 4", subject: "Screwing"
# Room.create name: "Room 5", subject: "Washing"
# Room.create name: "Room 6", subject: "Drying"
# Room.create name: "Room 7", subject: "Sexting"

Document.create user_id: 1, title: "Why people program", room_id:30
Document.create user_id: 2, title: "Why people Read", room_id:31
Document.create user_id: 2, title: "Why people Play", room_id:31
Document.create user_id: 2, title: "Why people Screw", room_id:32
Document.create user_id: 3, title: "Why people Wash", room_id:32
Document.create user_id: 3, title: "Why people Dry", room_id:33
Document.create user_id: 4, title: "Why people Sext", room_id:34

# User.create first_name: "User 1", last_name: "Fake", email: "fake@fake.com"
# User.create first_name: "User 2", last_name: "Fake_2", email: "fake2@fake.com"
# User.create first_name: "User 3", last_name: "Fake_3", email: "fake3@fake.com"
# User.create first_name: "User 4", last_name: "Fake_4", email: "fake4@fake.com"
# User.create first_name: "User 5", last_name: "Fake_5", email: "fake5@fake.com"

puts "All done!"