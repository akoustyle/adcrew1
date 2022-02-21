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

category = ["green", "urban", "fashion", "positivism"]
puts 'Creating talents...'

talent_one = Talent.create(name: "Fanny", about: "Hello I'm a sport trainer, bump into coding during the sanitary situation, got ambition and eager to do more in that professionnal environment.", title: "influenceuse", audience_male: "45%", audience_female: "65%", insta_link: Faker::Name.name, insta_eng: "22%", tiktok_link: Faker::Name.name, tiktok_eng: "46%", youtube_link: Faker::Name.name, youtube_eng: "73%", category: category.sample)
puts "saving Fanny..."
talent_one.save!

talent_two = Talent.create(name: "Noa Souffir", about: "Newbie in the freelance world 👩‍💻, I have a Master degree in Art Direction, at Penninghen Paris and expect to use these two skills, design and development to follow the process of visual identity, from the conception to the creation, through both print and digital.", title: "influenceuse", audience_male: "19%", audience_female: "81%", insta_link: Faker::Name.name, insta_eng: "76%", tiktok_link: Faker::Name.name, tiktok_eng: "2%", youtube_link: Faker::Name.name, youtube_eng: "34%", category: category.sample)
puts "saving Noa..."
talent_two.save!

talent_three = Talent.create(name: "Lucas", about: "Lucas est un jeune Youtubeur, souvent décrit comme humoriste par les internautes.", title: "youtubeur", audience_male: "19%", audience_female: "81%", insta_link: Faker::Name.name, insta_eng: "76%", tiktok_link: Faker::Name.name, tiktok_eng: "2%", youtube_link: Faker::Name.name, youtube_eng: "34%", category: category.sample)
puts "saving Lucas..."
talent_three.save!

talent_four = Talent.create(name: "Clara", about: "Elle affectionne tout particulièrement les marques avec une réelle éthique. Cela n'empêche qu'elle soit une véritable mordue de mode.", title: "influenceuse", audience_male: "19%", audience_female: "81%", insta_link: Faker::Name.name, insta_eng: "76%", tiktok_link: Faker::Name.name, tiktok_eng: "2%", youtube_link: Faker::Name.name, youtube_eng: "34%", category: category.sample)
puts "saving Clara..."
talent_four.save!

talent_five = Talent.create(name: "Rubi", about: "Jeune Parisienne d’origine française et brésilienne, Rubi a un univers bien à elle.", title: "youtubeuse", audience_male: "19%", audience_female: "81%", insta_link: Faker::Name.name, insta_eng: "76%", tiktok_link: Faker::Name.name, tiktok_eng: "2%", youtube_link: Faker::Name.name, youtube_eng: "34%", category: category.sample)
puts "saving Rubi..."
talent_five.save!

talent_six = Talent.create(name: "Manon", about: "Sur Instagram et sur Tik Tok elle partage avec beaucoup d'humour ses looks et ses tips pour vivre de façon plus responsable.", title: "tiktokeuse", audience_male: "19%", audience_female: "81%", insta_link: Faker::Name.name, insta_eng: "76%", tiktok_link: Faker::Name.name, tiktok_eng: "2%", youtube_link: Faker::Name.name, youtube_eng: "34%", category: category.sample)
puts "saving Manon..."
talent_six.save!

talent_seven = Talent.create(name: "Mathilde", about: "Aventurière et solaire , Mathilde partage à sa communauté son quotidien, sa famille et ses voyages.", title: "influenceuse", audience_male: "19%", audience_female: "81%", insta_link: Faker::Name.name, insta_eng: "76%", tiktok_link: Faker::Name.name, tiktok_eng: "2%", youtube_link: Faker::Name.name, youtube_eng: "34%", category: category.sample)
puts "saving Mathilde..."
talent_seven.save!

talent_heigth = Talent.create(name: "Patrick", about: "Grand amateur de cuisine , Patrick partage à sa communauté son quotidien, sa famille et ses voyages.", title: "influenceur", audience_male: "89%", audience_female: "41%", insta_link: Faker::Name.name, insta_eng: "76%", tiktok_link: Faker::Name.name, tiktok_eng: "2%", youtube_link: Faker::Name.name, youtube_eng: "34%", category: category.sample)
puts "saving Patrick..."
talent_heigth.save!

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

campaign_seven = Campaign.create(name: "Yves Rocher", objectif: "Check everything is working properly", activation: "Print & Digital", reach: "7000", sentence: Faker::Quote.famous_last_words, sentence2: Faker::TvShows::Friends.quote, tag: false)
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

collab_four = Collab.create(talent_id: talent_two.id, campaign_id: campaign_heigth.id)
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
