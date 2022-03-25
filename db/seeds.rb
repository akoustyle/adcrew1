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
User.destroy_all

category = ["green", "fashion", "lifestyle"]
puts 'Creating talents...'

blackmaroccan = Talent.create(name: "@blackmaroccan", about: "Hello I'm a Safya ", title: "influenceuse", audience_male: "45%", audience_female: "65%",link_insta: "https://www.instagram.com/blackmaroccan/", insta_link: "22500", insta_eng: "22%", link_tiktok: "", tiktok_link: "", tiktok_eng: "", link_youtube: "https://www.youtube.com/channel/UCA-GavKSIJmHNfsNKwmeq9w/videos", youtube_link: "UCA-GavKSIJmHNfsNKwmeq9w", youtube_eng: "73%", category: "green")
puts "saving Blackmaroccan..."
blackmaroccan.save!

jorjadela = Talent.create(name: "@jorjadela", about: "Hello I'm Justine", title: "influenceuse", audience_male: "19%", audience_female: "81%",link_insta: "https://www.instagram.com/jorjadela/", insta_link: "16700", insta_eng: "76%", link_tiktok: "https://www.tiktok.com/@jorjadela_?lang=fr", tiktok_link: "22600", tiktok_eng: "2%", link_youtube: "", youtube_link: "", youtube_eng: "", category: "green")
puts "saving jorjadela..."
jorjadela.save!

m_berenyce = Talent.create(name: "@m_berenyce", about: "Hello I'm Bérénice.", title: "influenceuse", audience_male: "19%", audience_female: "81%", link_insta: "https://www.instagram.com/m_berenyce/", insta_link: "15000", insta_eng: "76%", link_tiktok: "", tiktok_link: "", tiktok_eng: "", link_youtube: "https://www.youtube.com/channel/UCC4HF9Ir0EFipVngNHbcLew/videos", youtube_link: "UCC4HF9Ir0EFipVngNHbcLew", youtube_eng: "34%", category: "green")
puts "saving berenyce..."
m_berenyce.save!

paulineleroy = Talent.create(name: "@_paulineleroy_", about: "Hello I'm Pauline.", title: "influenceuse", audience_male: "19%", audience_female: "81%", link_insta: "https://www.instagram.com/_paulineleroy_/", insta_link: "13400", insta_eng: "76%", link_tiktok: "", tiktok_link: "", tiktok_eng: "", link_youtube: "https://www.youtube.com/channel/UCJXW0Vtbfxd-UrkHH01qTNQ/videos", youtube_link: "UCJXW0Vtbfxd-UrkHH01qTNQ", youtube_eng: "34%", category: "green")
puts "saving paulineleroy..."
paulineleroy.save!

claravictorya = Talent.create(name: "@claravictorya", about: "Hello I'm Clara.", title: "influenceuse", audience_male: "19%", audience_female: "81%",link_insta: "https://www.instagram.com/claravictorya/", insta_link: "132000", insta_eng: "76%", link_tiktok: "https://www.tiktok.com/@clara.victorya?lang=fr", tiktok_link: "34900", tiktok_eng: "2%", link_youtube: "https://www.youtube.com/c/ClaraVictorya/videos", youtube_link: 'UCk8nAg4WD7Gcml7TK8yVtbQ', youtube_eng: "34%", category: "green")
puts "saving claravictorya..."
claravictorya.save!

maoui2saintdenis = Talent.create(name: "@maoui2saintdenis", about: "Hello I'm Manon.", title: "influenceuse", audience_male: "19%", audience_female: "81%", link_insta: "https://www.instagram.com/maoui2saintdenis/", insta_link: "45200", insta_eng: "76%", link_tiktok: "https://www.tiktok.com/@maoui2saintdenis?lang=fr", tiktok_link: "158750", tiktok_eng: "2%", link_youtube: "", youtube_link: "", youtube_eng: "34%", category: "green")
puts "saving maoui2saintdenis..."
maoui2saintdenis.save!

rubipigeon = Talent.create(name: "@rubipigeon", about: "Hello I'm Rubi.", title: "influenceuse", audience_male: "19%", audience_female: "81%", link_insta: "https://www.instagram.com/rubipigeon/", insta_link: "42400", insta_eng: "76%", link_tiktok: "https://www.tiktok.com/@rubipigeon?lang=fr", tiktok_link: "8470", tiktok_eng: "2%", link_youtube: "https://www.youtube.com/c/RUSMINFR/videos", youtube_link: "UCq5hh3lQDm41FrNchLBrJqw", youtube_eng: "34%", category: "green")
puts "saving rubipigeon..."
rubipigeon.save!

rosabohneur = Talent.create(name: "@rosabohneur", about: "Hello I'm Tess.", title: "influenceur", audience_male: "89%", audience_female: "41%", link_insta: "https://www.instagram.com/rosabohneur/", insta_link: "64400", insta_eng: "76%", link_tiktok: "https://www.tiktok.com/@ameliecara01", tiktok_link: Faker::Name.name, tiktok_eng: "2%", link_youtube: "https://www.youtube.com/user/passecomposeparis", youtube_link: "UCq5hh3lQDm41FrNchLBrJqw", youtube_eng: "34%", category: category.sample)
puts "saving rosabohneur..."
rosabohneur.save!

lesbonnesappes = Talent.create(name: "@lesbonnesappes", about: "Hello I'm Samantha.", title: "influenceur", audience_male: "89%", audience_female: "41%", link_insta: "https://www.instagram.com/lesbonnesappes/", insta_link: "49500", insta_eng: "76%", link_tiktok: "https://www.tiktok.com/@lesbonnesappes", tiktok_link: "81200", tiktok_eng: "2%", link_youtube: "https://www.youtube.com/user/passecomposeparis", youtube_link: "UCq5hh3lQDm41FrNchLBrJqw", youtube_eng: "34%", category: category.sample)
puts "saving lesbonnesappes..."
lesbonnesappes.save!

marionlouisa = Talent.create(name: "@_marionlouisa_", about: "Hello I'm Marion.", title: "influenceur", audience_male: "89%", audience_female: "41%", link_insta: "https://www.instagram.com/_marionlouisa_/", insta_link: "15800", insta_eng: "76%", link_tiktok: "https://www.tiktok.com/@marionlouisa?lang=fr", tiktok_link: "12600", tiktok_eng: "2%", link_youtube: "https://www.youtube.com/c/MarionLouisa/videos", youtube_link: "UCq5hh3lQDm41FrNchLBrJqw", youtube_eng: "34%", category: "green")
puts "saving marionlouisa..."
marionlouisa.save!

puts 'Done !'

puts 'Creating campaigns...'
campaign_one = Campaign.create(name: "Laino Cosmetics", objectif: "Check everything is working properly", activation: "Web only", reach: "2000000", sentence: Faker::Quote.famous_last_words, sentence2: Faker::TvShows::Friends.quote, tag: true)
puts "saving Laino Cosmetics..."
campaign_one.save!

campaign_two = Campaign.create(name: "Lounge wear", objectif: "Check everything is working properly", activation: "Print & Digital", reach: "40000", sentence: Faker::Quote.famous_last_words, sentence2: Faker::TvShows::Friends.quote, tag: false)
puts "saving Lounge wear..."
campaign_two.save!

campaign_three = Campaign.create(name: "Jean-Paul Gaultier", objectif: "Check everything is working properly", activation: "Print & Digital", reach: "5000000", sentence: Faker::Quote.famous_last_words, sentence2: Faker::TvShows::Friends.quote, tag: true)
puts "saving Jean-Paul Gaultier..."
campaign_three.save!

campaign_four = Campaign.create(name: "Pretty Little Thing", objectif: "Check everything is working properly", activation: "Print & Digital", reach: "600000", sentence: Faker::Quote.famous_last_words, sentence2: Faker::TvShows::Friends.quote, tag: true)
puts "saving Pretty Little Thing..."
campaign_four.save!

campaign_five = Campaign.create(name: "Cacharel", objectif: "Check everything is working properly", activation: "Print & Digital", reach: "7000", sentence: Faker::Quote.famous_last_words, sentence2: Faker::TvShows::Friends.quote, tag: false)
puts "saving Cacharel..."
campaign_five.save!

campaign_six = Campaign.create(name: "Canon", objectif: "Check everything is working properly", activation: "Print & Digital", reach: "800000", sentence: Faker::Quote.famous_last_words, sentence2: Faker::TvShows::Friends.quote, tag: false)
puts "saving Canon..."
campaign_six.save!

campaign_seven = Campaign.create(name: "Yves Rocher", objectif: "Check everything is working properly", activation: "Print & Digital", reach: "7000", sentence: Faker::Quote.famous_last_words, sentence2: Faker::TvShows::Friends.quote, tag: true)
puts "saving Yves Rocher..."
campaign_seven.save!

campaign_height = Campaign.create(name: "Maybelline", objectif: "Check everything is working properly", activation: "Print & Digital", reach: "710000", sentence: Faker::Quote.famous_last_words, sentence2: Faker::TvShows::Friends.quote, tag: false)
puts "saving Maybelline..."
campaign_height.save!

puts 'Done !'

puts 'Creating collabs...'
collab_one = Collab.create(talent_id: talent_one.id, campaign_id: campaign_one.id)
puts "saving collab 1..."
collab_one.save!

collab_two = Collab.create(talent_id: talent_two.id, campaign_id: campaign_one.id)
puts "saving collab 2..."
collab_two.save!

collab_three = Collab.create(talent_id: talent_height.id, campaign_id: campaign_height.id)
puts "saving collab 4..."
collab_three.save!

collab_four = Collab.create(talent_id: talent_two.id, campaign_id: campaign_height.id)
puts "saving collab 4..."
collab_four.save!

collab_five = Collab.create(talent_id: talent_three.id, campaign_id: campaign_three.id)
puts "saving collab 5..."
collab_five.save!

collab_six = Collab.create(talent_id: talent_seven.id, campaign_id: campaign_four.id)
puts "saving collab 6..."
collab_six.save!

collab_seven = Collab.create(talent_id: talent_four.id, campaign_id: campaign_four.id)
puts "saving collab 7..."
collab_seven.save!

collab_eight = Collab.create(talent_id: talent_five.id, campaign_id: campaign_four.id)
puts "saving collab 8..."
collab_eight.save!

collab_nine = Collab.create(talent_id: talent_six.id, campaign_id: campaign_five.id)
puts "saving collab 9..."
collab_nine.save!

collab_ten = Collab.create(talent_id: talent_one.id, campaign_id: campaign_four.id)
puts "saving collab 10..."
collab_ten.save!

collab_eleven = Collab.create(talent_id: talent_three.id, campaign_id: campaign_five.id)
puts "saving collab 11..."
collab_eleven.save!

collab_twelve = Collab.create(talent_id: talent_seven.id, campaign_id: campaign_six.id)
puts "saving collab 12..."
collab_twelve.save!

collab_thirteen = Collab.create(talent_id: talent_five.id, campaign_id: campaign_seven.id)
puts "saving collab 13..."
collab_thirteen.save!

puts 'Done !'

puts 'Creating Users...'
first = User.new(
            email: 'adcrew@adcrew.com',
            password: "123456")
puts "saving adc..."
first.save!
puts "Adc saved successfully!"
