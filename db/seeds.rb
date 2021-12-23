# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Talent.destroy_all
Campaign.destroy_all
Collab.destroy_all
Pole.destroy_all

puts "Creating poles array..."
POLES_ARRAY = []
POLES_ARRAY << green = Pole.create(name: 'green')
puts "Pole: #{green.name} created !"
POLES_ARRAY << urban = Pole.create(name: 'urban')
puts "Pole: #{urban.name} created !"
POLES_ARRAY << fashion = Pole.create(name: 'fashion')
puts "Sport: #{fashion.name} created !"
POLES_ARRAY << positivism = Pole.create(name: 'positivism')
puts "Sport: #{positivism.name} created !"
puts "All poles created successfully!"
puts 'Creating talents...'
talent_one = Talent.create(name: "O'Neal Maoukola", about: "Hello I'm a sport trainer, bump into coding during the sanitary situation, got ambition and eager to do more in that professionnal environment.", title: "coach", audience_male: "1%", audience_female: "99%", insta_link: Faker::Name.name, insta_eng: "22%", tiktok_link: Faker::Name.name, tiktok_eng: "46%", youtube_link: Faker::Name.name, youtube_eng: "73%")
Talent.create(name: "O'Neal Maoukola", about: "Hello I'm a sport trainer, bump into coding during the sanitary situation, got ambition and eager to do more in that professionnal environment.", title: "coach", audience_male: "1%", audience_female: "99%", insta_link: Faker::Name.name, insta_eng: "22%", tiktok_link: Faker::Name.name, tiktok_eng: "46%", youtube_link: Faker::Name.name, youtube_eng: "73%")
Talent.create(name: "O'Neal Maoukola", about: "Hello I'm a sport trainer, bump into coding during the sanitary situation, got ambition and eager to do more in that professionnal environment.", title: "coach", audience_male: "1%", audience_female: "99%", insta_link: Faker::Name.name, insta_eng: "22%", tiktok_link: Faker::Name.name, tiktok_eng: "46%", youtube_link: Faker::Name.name, youtube_eng: "73%")
talent_two = Talent.create(name: "Agathe Saint-Frison", about: "Newbie in the freelance world 👩‍💻, I have a Master degree in Art Direction, at Penninghen Paris and expect to use these two skills, design and development to follow the process of visual identity, from the conception to the creation, through both print and digital.", title: "art director", audience_male: "99%", audience_female: "1%", insta_link: Faker::Name.name, insta_eng: "76%", tiktok_link: Faker::Name.name, tiktok_eng: "2%", youtube_link: Faker::Name.name, youtube_eng: "34%")
Talent.create(name: "Agathe Saint-Frison", about: "Newbie in the freelance world 👩‍💻, I have a Master degree in Art Direction, at Penninghen Paris and expect to use these two skills, design and development to follow the process of visual identity, from the conception to the creation, through both print and digital.", title: "art director", audience_male: "99%", audience_female: "1%", insta_link: Faker::Name.name, insta_eng: "76%", tiktok_link: Faker::Name.name, tiktok_eng: "2%", youtube_link: Faker::Name.name, youtube_eng: "34%")
Talent.create(name: "Agathe Saint-Frison", about: "Newbie in the freelance world 👩‍💻, I have a Master degree in Art Direction, at Penninghen Paris and expect to use these two skills, design and development to follow the process of visual identity, from the conception to the creation, through both print and digital.", title: "art director", audience_male: "99%", audience_female: "1%", insta_link: Faker::Name.name, insta_eng: "76%", tiktok_link: Faker::Name.name, tiktok_eng: "2%", youtube_link: Faker::Name.name, youtube_eng: "34%")
puts 'Done !'
puts 'Creating campaigns...'
campaign_one = Campaign.create(name: "AD Crew x Le Wagon", objectif: "Check everything is working properly", activation: "Web only", reach: "2", tag: true)
campaign_two = Campaign.create(name: "AD Crew x Penninghen", objectif: "Check everything is working properly", activation: "Print & Digital", reach: "69", tag: false)
puts 'Done !'
puts 'Creating collabs...'
Collab.create(talent_id: talent_one.id,  campaign_id: campaign_one.id)
Collab.create(talent_id: talent_two.id,  campaign_id: campaign_one.id)
Collab.create(talent_id: talent_two.id,  campaign_id: campaign_two.id)
puts 'Done !'
# poles_ARRAY = [green, urban, fashion, positivism]
