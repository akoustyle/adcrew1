require "open-uri"
require "nokogiri"
require "json"

# keyword = "Akoustyle"

#   # forge the URL
#   url = "https://www.instagram.com/#{keyword}/"
#   # open the URL
#   response = URI.open(url).read
#   # convert the response into a Nokogiri document
#   html_doc = Nokogiri::HTML(response)
#   # search in the doc each element with class '.k9GMp'
#   # initialize a talent array
#   # talent_info = []
#   html_doc.search('.-nal3').each do |element|
#     # nb_followers = element.search('.g47SY ').text.strip.to_i
#     puts element.text
#     # etsy_price = element.search('.currency-value').text.strip.to_i
#     # create a gift with those information
#     # talent_info << { nb: nb_followers }
#   end
#   # return an array of talent info

# user = 'UCq5hh3lQDm41FrNchLBrJqw'
# key = 'AIzaSyCwCsUf1XjoFM3SaapkCsXH2gF7lVnckHg'
# url = "https://www.googleapis.com/youtube/v3/channels?part=statistics&id=#{user}&key=#{key}"

# html_file = URI.open(url).read
# html_doc = Nokogiri::HTML(html_file)

# html_doc.search('#inner-header-container').each do |element|
#   puts element.search('.style-scope ytd-c4-tabbed-header-renderer').text.strip
#   # puts element.attribute('href').value
# end

# def follower()

# end
user = 'UCq5hh3lQDm41FrNchLBrJqw'
url = "https://www.googleapis.com/youtube/v3/channels?part=statistics&id=#{user}&key=AIzaSyCwCsUf1XjoFM3SaapkCsXH2gF7lVnckHg"
user_serialized = URI.open(url).read
user = JSON.parse(user_serialized)

#puts "#{user['items']} - #{user['items']}"
puts user['items'].first['statistics']['subscriberCount']
puts user['items'].first['statistics']['videoCount']
