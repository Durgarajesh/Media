# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Channel.create!(name: "Telugu");
Channel.create!(name: "Hindi");
Channel.create!(name: "Tamil");
Channel.create!(name: "English");
Channel.create!(name: "Panjabi");
Channel.create!(name: "Kannada");

Show.create!(name: "Discovery", channel_id: 4, start_time: Time.zone.now, end_time: Time.zone.now + 1.hour);
Show.create!(name: "Business today", channel_id: 1, start_time: Time.zone.now, end_time: Time.zone.now + 1.hour);
Show.create!(name: "Tradition", channel_id: 3, start_time: Time.zone.now, end_time: Time.zone.now + 1.hour);
Show.create!(name: "Interior", channel_id: 2, start_time: Time.zone.now, end_time: Time.zone.now + 1.hour);
Show.create!(name: "Dance", channel_id: 5, start_time: Time.zone.now, end_time: Time.zone.now + 1.hour);
Show.create!(name: "Tourism", channel_id: 2, start_time: Time.zone.now, end_time: Time.zone.now + 1.hour);


