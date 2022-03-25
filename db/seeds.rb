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

blackmaroccan = Talent.create(name: "@blackmaroccan", about: "Safya est une jeune influenceuse streetwear et beauté sur Instagram. Passionnée par la mode et par la seconde-main, elle partage avec sa communauté toutes ses nouveautés et ses conseils pour développer un style pointu et éco- responsable. ", title: "influenceuse", audience_male: "45%", audience_female: "65%",link_insta: "https://www.instagram.com/blackmaroccan/", insta_link: "22500", insta_eng: "22%", link_tiktok: "", tiktok_link: "", tiktok_eng: "", link_youtube: "https://www.youtube.com/channel/UCA-GavKSIJmHNfsNKwmeq9w/videos", youtube_link: "UCA-GavKSIJmHNfsNKwmeq9w", youtube_eng: "73%", category: "green")
puts "saving Blackmaroccan..."
blackmaroccan.save!

jorjadela = Talent.create(name: "@jorjadela", about: "Justine, connue sous le pseudo @jorjadela est une influenceuse française passionnée par la mode, l'art et les voyages.", title: "influenceuse", audience_male: "19%", audience_female: "81%",link_insta: "https://www.instagram.com/jorjadela/", insta_link: "16700", insta_eng: "76%", link_tiktok: "https://www.tiktok.com/@jorjadela_?lang=fr", tiktok_link: "22600", tiktok_eng: "2%", link_youtube: "", youtube_link: "", youtube_eng: "", category: "green")
puts "saving jorjadela..."
jorjadela.save!

m_berenyce = Talent.create(name: "@m_berenyce", about: "Bérénice est une blogueuse passionnée de mode et adepte de la seconde main.", title: "Blogueuse", audience_male: "19%", audience_female: "81%", link_insta: "https://www.instagram.com/m_berenyce/", insta_link: "15000", insta_eng: "76%", link_tiktok: "https://www.tiktok.com/@mberenyce?_d=secCgwIARCbDRjEFSACKAESPgo8E5LuOCbPQMSxABE7wuuynMeraB2CSXZZR62LrJqrKpreG0IN6xBldK%2FJdlCPCd%2FdsSyHq5vXxQ3yMZw%2BGgA%3D&checksum=cb6e6552a9886865c8df37b13082f06ef4575b0c25d4ca44efd4d9a605008c9b&language=fr&sec_uid=MS4wLjABAAAA1KPT2ZOcmMmzD3TTOMQf5C0vGSgUEE3MyKjeYexxbjXVM-HsITfgadjIInPynSCh&sec_user_id=MS4wLjABAAAA1KPT2ZOcmMmzD3TTOMQf5C0vGSgUEE3MyKjeYexxbjXVM-HsITfgadjIInPynSCh&share_app_id=1233&share_author_id=6925484388945265670&share_link_id=75D5DCDA-44BC-4002-AE75-274831EFB03C&tt_from=copy&u_code=dh0b424d44k28i&user_id=6925484388945265670&utm_campaign=client_share&utm_medium=ios&utm_source=copy&source=h5_m&_r=1", tiktok_link: "9301", tiktok_eng: "", link_youtube: "https://www.youtube.com/channel/UCC4HF9Ir0EFipVngNHbcLew/videos", youtube_link: "UCC4HF9Ir0EFipVngNHbcLew", youtube_eng: "34%", category: "green")
puts "saving berenice..."
m_berenyce.save!

paulineleroy = Talent.create(name: "@_paulineleroy_", about: "Amoureuse du vintage, Pauline aime partager à sa communauté sa passion pour la seconde main et la couture.", title: "influenceuse", audience_male: "19%", audience_female: "81%", link_insta: "https://www.instagram.com/_paulineleroy_/", insta_link: "13400", insta_eng: "76%", link_tiktok: "", tiktok_link: "", tiktok_eng: "", link_youtube: "https://www.youtube.com/channel/UCJXW0Vtbfxd-UrkHH01qTNQ/videos", youtube_link: "UCJXW0Vtbfxd-UrkHH01qTNQ", youtube_eng: "34%", category: "green")
puts "saving paulineleroy..."
paulineleroy.save!

claravictorya = Talent.create(name: "@claravictorya", about: "Clara est une jeune influenceuse et entrepreneuse amoureuse du vintage et des années 70.", title: "influenceuse", audience_male: "19%", audience_female: "81%",link_insta: "https://www.instagram.com/claravictorya/", insta_link: "132000", insta_eng: "9,74%", link_tiktok: "https://www.tiktok.com/@clara.victorya?lang=fr", tiktok_link: "34900", tiktok_eng: "2%", link_youtube: "https://www.youtube.com/c/ClaraVictorya/videos", youtube_link: 'UCk8nAg4WD7Gcml7TK8yVtbQ', youtube_eng: "34%", category: "green")
puts "saving claravictorya..."
claravictorya.save!

maoui2saintdenis = Talent.create(name: "@maoui2saintdenis", about: "Maoui, de son prénom Manon, est une jeune influenceuse spontanée adepte de la seconde main.", title: "influenceuse", audience_male: "19%", audience_female: "81%", link_insta: "https://www.instagram.com/maoui2saintdenis/", insta_link: "45200", insta_eng: "76%", link_tiktok: "https://www.tiktok.com/@maoui2saintdenis?lang=fr", tiktok_link: "158750", tiktok_eng: "2%", link_youtube: "", youtube_link: "", youtube_eng: "34%", category: "green")
puts "saving maoui2saintdenis..."
maoui2saintdenis.save!

rubipigeon = Talent.create(name: "@rubipigeon", about: "Rubi, c'est la reine de l'upcycling depuis l'âge de 15 ans. Elle a démocratisé le concept sur Instagram et Youtube avec ses conseils mode et sa marque Rusmin, qui propose des vêtements réalisés à partir de matières déjà existantes, fabriqués à Paris, dans une démarche respectueuse de l'humain et de l'environnement.", title: "influenceuse", audience_male: "19%", audience_female: "81%", link_insta: "https://www.instagram.com/rubipigeon/", insta_link: "42400", insta_eng: "76%", link_tiktok: "https://www.tiktok.com/@rubipigeon?lang=fr", tiktok_link: "8470", tiktok_eng: "2%", link_youtube: "https://www.youtube.com/c/RUSMINFR/videos", youtube_link: "UCq5hh3lQDm41FrNchLBrJqw", youtube_eng: "34%", category: "green")
puts "saving rubipigeon..."
rubipigeon.save!

rosabohneur = Talent.create(name: "@rosabohneur", about: "Rosabohneur, de son prénom Tess est une jeune influenceuse lilloise passionnée par la mode vintage et l'upcycling, Elle livre à sa communauté ses astuces écologiques et éthiques ainsi que ses bons plans de seconde main. Sa devise étant 'No fast fashion and eco-friendly in progress', elle montre comment améliorer sa façon de consommer au quotidien.", title: "influenceuse", audience_male: "89%", audience_female: "41%", link_insta: "https://www.instagram.com/rosabohneur/", insta_link: "64400", insta_eng: "76%", link_tiktok: "https://www.tiktok.com/@ameliecara01", tiktok_link: Faker::Name.name, tiktok_eng: "2%", link_youtube: "https://www.youtube.com/user/passecomposeparis", youtube_link: "UCq5hh3lQDm41FrNchLBrJqw", youtube_eng: "34%", category: category.sample)
puts "saving rosabohneur..."
rosabohneur.save!

lesbonnesappes = Talent.create(name: "@lesbonnesappes", about: "Passionnée de mode et de seconde main, Samantha a choisi de créer sa page Instagram intitulée @lesbonnesappes afin d'y partager ses meilleurs plans.", title: "influenceuse", audience_male: "89%", audience_female: "41%", link_insta: "https://www.instagram.com/lesbonnesappes/", insta_link: "49500", insta_eng: "76%", link_tiktok: "https://www.tiktok.com/@lesbonnesappes", tiktok_link: "81200", tiktok_eng: "2%", link_youtube: "https://www.youtube.com/user/passecomposeparis", youtube_link: "UCq5hh3lQDm41FrNchLBrJqw", youtube_eng: "34%", category: category.sample)
puts "saving lesbonnesappes..."
lesbonnesappes.save!

marionlouisa = Talent.create(name: "@_marionlouisa_", about: "Passionnée de mode et de seconde main, Marion a pour objectif de montrer comment consommer autrement. Elle partage ses astuces DIY, de couture et d'upcycling sur ses réseaux sociaux.", title: "influenceuse", audience_male: "89%", audience_female: "41%", link_insta: "https://www.instagram.com/_marionlouisa_/", insta_link: "15800", insta_eng: "76%", link_tiktok: "https://www.tiktok.com/@marionlouisa?lang=fr", tiktok_link: "12600", tiktok_eng: "2%", link_youtube: "https://www.youtube.com/c/MarionLouisa/videos", youtube_link: "UCq5hh3lQDm41FrNchLBrJqw", youtube_eng: "34%", category: "green")
puts "saving marionlouisa..."
marionlouisa.save!

geraldabarros = Talent.create(name: "@geraldabarros_", about: "Géralda Barros est une jeune upcycling designer. Passionnée par la mode, elle réutilise des pièces de seconde main pour en faire des créations originales.", title: "influenceuse", audience_male: "89%", audience_female: "41%", link_insta: "https://www.instagram.com/geraldabarros_/", insta_link: "90000", insta_eng: "76%", link_tiktok: "https://www.tiktok.com/@marionlouisa?lang=fr", tiktok_link: "213000", tiktok_eng: "2%", link_youtube: "", youtube_link: "", youtube_eng: "", category: "green")
puts "saving geraldabarros..."
geraldabarros.save!

anaellepostollec = Talent.create(name: "@anaellepostollec", about: "Anaelle est une makeup artist au style affirmé, pop et coloré. Ses make-up look toujours plus originaux et hors du commun font d'elle une influenceuse unique dans son domaine.", title: "influenceuse", audience_male: "89%", audience_female: "41%", link_insta: "https://www.instagram.com/anaellepostollec/", insta_link: "175000", insta_eng: "76%", link_tiktok: "https://www.tiktok.com/@anaelle_007?lang=fr", tiktok_link: "890", tiktok_eng: "2%", link_youtube: "https://www.youtube.com/c/TheVioletCloset/videos", youtube_link: "UCq5hh3lQDm41FrNchLBrJqw", youtube_eng: "34%", category: "fashion")
puts "saving anaellepostollec..."
anaellepostollec.save!

ameliecara01 = Talent.create(name: "@ameliecara01", about: "Active depuis 2012, Amélie a d'abord commencé dans le Youtube Game en partageant ses skills en matière de nail art. Aujourd'hui, c'est une jeune iinfluenceuse accomplie et passionnée par la mode mais surtout le make-up.", title: "influenceuse", audience_male: "89%", audience_female: "41%", link_insta: "https://www.instagram.com/ameliecara01/", insta_link: "311000", insta_eng: "76%", link_tiktok: "https://www.tiktok.com/@ameliecara01?lang=fr", tiktok_link: "391000", tiktok_eng: "2%", link_youtube: "https://www.youtube.com/user/Ameliecara01/videos", youtube_link: "UCq5hh3lQDm41FrNchLBrJqw", youtube_eng: "34%", category: "fashion")
puts "saving ameliecara01..."
ameliecara01.save!

knoetzie = Talent.create(name: "@knoetzie", about: "Hello I'm Astrid.", title: "influenceuse", audience_male: "89%", audience_female: "41%", link_insta: "https://www.instagram.com/knoetzie/", insta_link: "19700", insta_eng: "76%", link_tiktok: "https://www.tiktok.com/@_knoetzie?lang=fr", tiktok_link: "101300", tiktok_eng: "2%", link_youtube: "https://www.youtube.com/user/Overandover04", youtube_link: "UCq5hh3lQDm41FrNchLBrJqw", youtube_eng: "34%", category: "lifestyle")
puts "saving knoetzie..."
knoetzie.save!

loynaphe = Talent.create(name: "@loynaphe", about: "Hello I'm Amandine.", title: "influenceuse", audience_male: "89%", audience_female: "41%", link_insta: "https://www.instagram.com/loynaphe/", insta_link: "11200", insta_eng: "76%", link_tiktok: "https://www.tiktok.com/@loynaphe_?lang=fr", tiktok_link: "44200", tiktok_eng: "2%", link_youtube: "https://www.youtube.com/user/Loynaphe", youtube_link: "UCq5hh3lQDm41FrNchLBrJqw", youtube_eng: "34%", category: "lifestyle")
puts "saving loynaphe..."
loynaphe.save!

blabbermooth = Talent.create(name: "@blabbermooth", about: "Noa Souffir, connue sur ses réseaux sous le pseudonyme @blabbermooth est une jeune influenceuse passionnée de mode.", title: "influenceuse", audience_male: "89%", audience_female: "41%", link_insta: "https://www.instagram.com/blabbermooth/", insta_link: "75000", insta_eng: "76%", link_tiktok: "https://www.tiktok.com/@blabbermoothof", tiktok_link: "18000", tiktok_eng: "2%", link_youtube: "https://www.youtube.com/channel/UCWet1JGdMI5PlO8VqXXg-Ng/videos", youtube_link: "UCWet1JGdMI5PlO8VqXXg-Ng", youtube_eng: "34%", category: "fashion")
puts "saving blabbermooth..."
blabbermooth.save!

lucasdorable = Talent.create(name: "@lucasdorable", about: "Lucas est un jeune influenceur connu pour son sens de la répartie plus que remarquable.", title: "influenceur", audience_male: "89%", audience_female: "41%", link_insta: "https://www.instagram.com/lucasdorable/", insta_link: "264000", insta_eng: "76%", link_tiktok: "https://www.tiktok.com/@lucasdorable?lang=fr", tiktok_link: "347700", tiktok_eng: "2%", link_youtube: "https://www.youtube.com/c/LucasDorable/videos", youtube_link: "UCWet1JGdMI5PlO8VqXXg-Ng", youtube_eng: "34%", category: "fashion")
puts "saving lucasdorable..."
lucasdorable.save!

florettenacer = Talent.create(name: "@florettenacer", about: "Florette est une jeune influenceuse bordelaise passionnée par la mode et les voyages.", title: "influenceuse", audience_male: "89%", audience_female: "41%", link_insta: "https://www.instagram.com/florettenacer/", insta_link: "32500", insta_eng: "5,86%", link_tiktok: "", tiktok_link: "", tiktok_eng: "2%", link_youtube: "https://www.youtube.com/channel/UC8veSx6buTDNbLqZtIeRqSA", youtube_link: "UC8veSx6buTDNbLqZtIeRqSA", youtube_eng: "34%", category: "fashion")
puts "saving florettenacer..."
florettenacer.save!

adelinerbr = Talent.create(name: "@adelinerbr", about: "Adeline est une influenceuse française, passionnée par la mode et la beauté.", title: "influenceuse", audience_male: "89%", audience_female: "41%", link_insta: "https://www.instagram.com/adelinerbr/", insta_link: "75900", insta_eng: "76%", link_tiktok: "", tiktok_link: "", tiktok_eng: "", link_youtube: "https://www.youtube.com/channel/UC_coDQehZPP41BfWQvUfhaw", youtube_link: "UC_coDQehZPP41BfWQvUfhaw", youtube_eng: "34%", category: "fashion")
puts "saving adelinerbr..."
adelinerbr.save!

twinsb_fit = Talent.create(name: "@twinsb_fit", about: "Twinsb_b fit c’est l’histoire de deux sœurs jumelles, Clara et Laurie, qui partagent quotidiennement sur leurs réseaux sociaux leur passion pour le fitness et la musculation", title: "influenceuses", audience_male: "89%", audience_female: "41%", link_insta: "https://www.instagram.com/twinsb_fit/", insta_link: "304000", insta_eng: "4,4%", link_tiktok: "https://www.tiktok.com/@twinsb_fit_officiel", tiktok_link: "470200", tiktok_eng: "2%", link_youtube: "https://www.youtube.com/channel/UCIB0G4S9isq4_SfeoITZnWg/videos", youtube_link: "CIB0G4S9isq4_SfeoITZnWg", youtube_eng: "34%", category: "lifestyle")
puts "saving twinsb_fit..."
twinsb_fit.save!

fannyrusso = Talent.create(name: "@fannyrusso__", about: "Fanny est une jeune influenceuse lifestyle principalement active sur Instagram mais aussi sur Tik Tok. Très attirée par le monde de la mode et principalement du Luxe, elle partage quotidiennement ses plus beaux outfits et ses meilleures astuces beauté à sa communauté.", title: "influenceuse", audience_male: "89%", audience_female: "41%", link_insta: "https://www.instagram.com/fannyrusso__/", insta_link: "19900", insta_eng: "76%", link_tiktok: "https://www.tiktok.com/@fannyrusso?lang=fr", tiktok_link: "86700", tiktok_eng: "2%", link_youtube: "https://www.youtube.com/user/maaxoou97/videos", youtube_link: "UCWet1JGdMI5PlO8VqXXg-Ng", youtube_eng: "34%", category: "fashion")
puts "saving fannyrusso..."
fannyrusso.save!

margotyou = Talent.create(name: "@mar.gotyou", about: "Margot est une jeune influenceuse bordelaise qui partage quotidiennement ses looks sur son Instagram.", title: "influenceuse", audience_male: "89%", audience_female: "41%", link_insta: "https://www.instagram.com/mar.gotyou/", insta_link: "23300", insta_eng: "76%", link_tiktok: "https://www.tiktok.com/@blabbermoothof", tiktok_link: "18000", tiktok_eng: "2%", link_youtube: "https://www.youtube.com/channel/UCWet1JGdMI5PlO8VqXXg-Ng/videos", youtube_link: "UCWet1JGdMI5PlO8VqXXg-Ng", youtube_eng: "34%", category: "fashion")
puts "saving mar.gotyou..."
margotyou.save!

knztv = Talent.create(name: "@knz.tv", about: "Kenza est une artiste indépendante spécialisée dans la customisation de sneakers. En effet, elle a su regrouper ses deux passions : le dessin et les sneakers et en faire son activité principale.", title: "influenceuse", audience_male: "89%", audience_female: "41%", link_insta: "https://www.instagram.com/knz.tv/", insta_link: "52000", insta_eng: "76%", link_tiktok: "https://www.tiktok.com/@blabbermoothof", tiktok_link: "18000", tiktok_eng: "2%", link_youtube: "https://www.youtube.com/channel/UCWet1JGdMI5PlO8VqXXg-Ng/videos", youtube_link: "UCWet1JGdMI5PlO8VqXXg-Ng", youtube_eng: "34%", category: "fashion")
puts "saving knz.tv..."
knztv.save!

mathouchepas = Talent.create(name: "@mathouchepas", about: "Aventurière et solaire , Mathilde partage à sa communauté son quotidien, sa famille et ses voyages.", title: "Créatrice digitale", audience_male: "89%", audience_female: "41%", link_insta: "https://www.instagram.com/mathouchepas/", insta_link: "85200", insta_eng: "76%", link_tiktok: "", tiktok_link: "", tiktok_eng: "", link_youtube: "", youtube_link: "", youtube_eng: "34%", category: "lifestyle")
puts "saving mathouchepas..."
mathouchepas.save!

aurep = Talent.create(name: "@_aurep", about: "Aurélie est une jeune influenceuse lilloise passionnée par la mode et aussi adepte du van life.", title: "Créatrice digitale", audience_male: "89%", audience_female: "41%", link_insta: "https://www.instagram.com/_aurep/", insta_link: "24300", insta_eng: "76%", link_tiktok: "", tiktok_link: "", tiktok_eng: "", link_youtube: "", youtube_link: "", youtube_eng: "34%", category: "lifestyle")
puts "saving aurep..."
aurep.save!

cameronflipe = Talent.create(name: "@cameronflipe", about: "Cameron est une jeune créatrice de contenu passionnée par la mode.", title: "Créatrice de contenu", audience_male: "89%", audience_female: "41%", link_insta: "https://www.instagram.com/cameronflipe/", insta_link: "16400", insta_eng: "76%", link_tiktok: "https://www.tiktok.com/@cameron.flp?lang=fr", tiktok_link: "24400", tiktok_eng: "39,4%", link_youtube: "https://www.youtube.com/c/CamSummers", youtube_link: "", youtube_eng: "34%", category: "fashion")
puts "saving aurep..."
cameronflipe.save!

xxcaillouxx = Talent.create(name: "@xxcaillouxx", about: "Camille est une jeune influenceuse, pétillante et adepte des vêtements vintage.", title: "Influenceuse", audience_male: "89%", audience_female: "41%", link_insta: "https://www.instagram.com/xxcaillouxx/", insta_link: "10900", insta_eng: "23,2%", link_tiktok: "https://www.tiktok.com/@caillouxxxxx?lang=fr", tiktok_link: "12200", tiktok_eng: "39,4%", link_youtube: "https://www.youtube.com/channel/UCuRDWffR77nXe7xmzaSFSNQ", youtube_link: "UCuRDWffR77nXe7xmzaSFSNQ", youtube_eng: "34%", category: "fashion")
puts "saving xxcaillouxx..."
xxcaillouxx.save!

ggspauline = Talent.create(name: "@ggspauline", about: "Pauline est une jeune maman influenceuse d'Angers, qui nous dévoile son quotidien avec sa fille Joy.", title: "Influenceuse", audience_male: "89%", audience_female: "41%", link_insta: "https://www.instagram.com/ggspauline/", insta_link: "17500", insta_eng: "8,54%", link_tiktok: "", tiktok_link: "", tiktok_eng: "", link_youtube: "", youtube_link: "", youtube_eng: "", category: "fashion")
puts "saving ggspauline..."
ggspauline.save!

julliejeine = Talent.create(name: "@jullie.jeine", about: "Jullie est une jeune influenceuse Franco Mozambicaine sud africaine qui habite à Lille.", title: "Influenceuse", audience_male: "89%", audience_female: "41%", link_insta: "https://www.instagram.com/jullie.jeine/", insta_link: "11700", insta_eng: "16,5%", link_tiktok: "", tiktok_link: "", tiktok_eng: "", link_youtube: "", youtube_link: "", youtube_eng: "", category: "fashion")
puts "saving jullie.jeine..."
julliejeine.save!

laura_limparfaite = Talent.create(name: "@laura_limparfaite", about: "Laura est une jeune maman influenceuse de Clermont-Ferrand, qui nous dévoile son quotidien avec sa fille Naïa.", title: "Influenceuse", audience_male: "89%", audience_female: "41%", link_insta: "https://www.instagram.com/laura_limparfaite/?hl=fr", insta_link: "36800", insta_eng: "13,1%", link_tiktok: "", tiktok_link: "", tiktok_eng: "", link_youtube: "", youtube_link: "", youtube_eng: "", category: "lifestyle")
puts "saving laura_limparfaite..."
laura_limparfaite.save!

hxlloworld = Talent.create(name: "@hxlloworld", about: "Océane est une jeune influenceuse réunionnaise passionnée par les sneakers et la mode.", title: "Influenceuse", audience_male: "89%", audience_female: "41%", link_insta: "https://www.instagram.com/hxlloworld/", insta_link: "32600", insta_eng: "2,67%", link_tiktok: "", tiktok_link: "", tiktok_eng: "", link_youtube: "", youtube_link: "", youtube_eng: "", category: "fashion")
puts "saving hxlloworld..."
hxlloworld.save!

vvvanel = Talent.create(name: "@vvvanel", about: "Vanel est une jeune créatrice de contenu passionnée par l'art et la mode.", title: "Créatrice de contenu", audience_male: "89%", audience_female: "41%", link_insta: "https://www.instagram.com/vvvanel/", insta_link: "31800", insta_eng: "43,4%", link_tiktok: "https://www.tiktok.com/@vvvanel", tiktok_link: "110000", tiktok_eng: "", link_youtube: "", youtube_link: "", youtube_eng: "", category: "fashion")
puts "saving vvvanel..."
vvvanel.save!

puts 'Done !'

puts 'Creating campaigns...'
adidas = Campaign.create(name: "ADIDAS", objectif: "Check everything is working properly", activation: "Web only", reach: "2000000", sentence: Faker::Quote.famous_last_words, sentence2: Faker::TvShows::Friends.quote, tag: true)
puts "saving ADIDAS..."
adidas.save!

coach_wild_rose = Campaign.create(name: "Coach Wild Rose perfume", objectif: "Check everything is working properly", activation: "Print & Digital", reach: "40000", sentence: Faker::Quote.famous_last_words, sentence2: Faker::TvShows::Friends.quote, tag: false)
puts "saving Coach Wild Rose perfume..."
coach_wild_rose.save!

vinted = Campaign.create(name: "Vinted", objectif: "Check everything is working properly", activation: "Print & Digital", reach: "5000000", sentence: Faker::Quote.famous_last_words, sentence2: Faker::TvShows::Friends.quote, tag: true)
puts "saving Vinted..."
vinted.save!

moodz = Campaign.create(name: "MOODZ", objectif: "Check everything is working properly", activation: "Print & Digital", reach: "600000", sentence: Faker::Quote.famous_last_words, sentence2: Faker::TvShows::Friends.quote, tag: true)
puts "saving moodz..."
moodz.save!

moodz2 = Campaign.create(name: "MOODZ", objectif: "Check everything is working properly", activation: "Print & Digital", reach: "600000", sentence: Faker::Quote.famous_last_words, sentence2: Faker::TvShows::Friends.quote, tag: true)
puts "saving moodz..."
moodz2.save!

adidas2 = Campaign.create(name: "ADIDAS", objectif: "Check everything is working properly", activation: "Print & Digital", reach: "7000", sentence: Faker::Quote.famous_last_words, sentence2: Faker::TvShows::Friends.quote, tag: false)
puts "saving Adidas..."
adidas2.save!

adidas3 = Campaign.create(name: "ADIDAS", objectif: "Check everything is working properly", activation: "Print & Digital", reach: "7000", sentence: Faker::Quote.famous_last_words, sentence2: Faker::TvShows::Friends.quote, tag: false)
puts "saving AAdidas..."
adidas3.save!

farfetch = Campaign.create(name: "FARFETCH", objectif: "Check everything is working properly", activation: "Print & Digital", reach: "800000", sentence: Faker::Quote.famous_last_words, sentence2: Faker::TvShows::Friends.quote, tag: false)
puts "saving FARFETCH..."
farfetch.save!

lacoste = Campaign.create(name: "LACOSTE", objectif: "Check everything is working properly", activation: "Print & Digital", reach: "7000", sentence: Faker::Quote.famous_last_words, sentence2: Faker::TvShows::Friends.quote, tag: true)
puts "saving LACOSTE..."
lacoste.save!

magnum = Campaign.create(name: "MAGNUM", objectif: "Check everything is working properly", activation: "Print & Digital", reach: "7000", sentence: Faker::Quote.famous_last_words, sentence2: Faker::TvShows::Friends.quote, tag: true)
puts "saving MAGNUM..."
magnum.save!

zalando = Campaign.create(name: "ZALANDO", objectif: "Check everything is working properly", activation: "Print & Digital", reach: "710000", sentence: Faker::Quote.famous_last_words, sentence2: Faker::TvShows::Friends.quote, tag: false)
puts "saving ZALANDO..."
zalando.save!

pimkie = Campaign.create(name: "PIMKIE", objectif: "Check everything is working properly", activation: "Print & Digital", reach: "710000", sentence: Faker::Quote.famous_last_words, sentence2: Faker::TvShows::Friends.quote, tag: false)
puts "saving PIMKIE..."
pimkie.save!

levis = Campaign.create(name: "LEVIS", objectif: "Check everything is working properly", activation: "Print & Digital", reach: "710000", sentence: Faker::Quote.famous_last_words, sentence2: Faker::TvShows::Friends.quote, tag: false)
puts "saving LEVIS..."
levis.save!

puts 'Done !'

puts 'Creating collabs...'
collab_one = Collab.create(talent_id: lucasdorable.id, campaign_id: adidas.id)
puts "saving collab 1..."
collab_one.save!

collab_two = Collab.create(talent_id: rosabohneur.id, campaign_id: coach_wild_rose.id)
puts "saving collab 2..."
collab_two.save!

collab_three = Collab.create(talent_id: rosabohneur.id, campaign_id: vinted.id)
puts "saving collab 4..."
collab_three.save!

collab_four = Collab.create(talent_id: lesbonnesappes.id, campaign_id: moodz.id)
puts "saving collab 4..."
collab_four.save!

collab_five = Collab.create(talent_id: blackmaroccan.id, campaign_id: adidas2.id)
puts "saving collab 5..."
collab_five.save!

collab_six = Collab.create(talent_id: blackmaroccan.id, campaign_id: farfetch.id)
puts "saving collab 6..."
collab_six.save!

collab_seven = Collab.create(talent_id: blabbermooth.id, campaign_id: lacoste.id)
puts "saving collab 7..."
collab_seven.save!

collab_eight = Collab.create(talent_id: rubipigeon.id, campaign_id: zalando.id)
puts "saving collab 8..."
collab_eight.save!

collab_nine = Collab.create(talent_id: paulineleroy.id, campaign_id: moodz2.id)
puts "saving collab 9..."
collab_nine.save!

collab_ten = Collab.create(talent_id: hxlloworld.id, campaign_id: adidas3.id)
puts "saving collab 10..."
collab_ten.save!

collab_eleven = Collab.create(talent_id: fannyrusso.id, campaign_id: pimkie.id)
puts "saving collab 11..."
collab_eleven.save!

collab_twelve = Collab.create(talent_id: lucasdorable.id, campaign_id: magnum.id)
puts "saving collab 12..."
collab_twelve.save!

collab_thirteen = Collab.create(talent_id: rubipigeon.id, campaign_id: levis.id)
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
