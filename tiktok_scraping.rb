require "open-uri"
require "json"

# class ScrapeAllrecipesService
#   def initialize(ingredient)
#     @ingredient = ingredient
#   end

#   def call
#     html = URI.open("https://www.allrecipes.com/search/results/?search=#{@ingredient}").read
#     # 1. Parse HTML
#     doc = Nokogiri::HTML(html, nil, "utf-8")
#     # 2. For the first five results
#     results = []
#     doc.search(".card__recipe").first(5).each do |element|
#       # 3. Create recipe and store it in results
#       name = element.search(".card__imageContainer a").first.attribute("title").value.strip
#       description = element.search(".card__detailsContainer .card__summary").first.text.strip
#       rating_element = element.search(".card__detailsContainer .review-star-text").first
#       rating = rating_element ? rating_element.text.strip.match(/\d\.?\d*/)[0] : nil
#       recipe_url = element.search(".card__imageContainer a").first.attribute("href").value.strip
#       recipe_html = URI.open(recipe_url).read
#       recipe_doc = Nokogiri::HTML(recipe_html, nil, "utf-8")
#       prep_element = recipe_doc.search(".recipe-meta-item").find do |element|
#         element.text.strip.match?(/prep/i)
#       end
#       prep_time = prep_element ? prep_element.text.strip.match(/prep:\s+(\w* \w*)/i)[1] : nil
#       results << Recipe.new(name: name, description: description, rating: rating, prep_time: prep_time)
#     end
#     results
#   end
# end
<<<<<<< HEAD
def call
  html = URI.open("https://www.allrecipes.com/search/results/?search=#{@ingredient}").read
  # 1. Parse HTML
  doc = Nokogiri::HTML(html, nil, "utf-8")
  # 2. For the first five results
  results = []
  doc.search(".card__recipe").first(5).each do |element|
    # 3. Create recipe and store it in results
    name = element.search(".card__imageContainer a").first.attribute("title").value.strip
    description = element.search(".card__detailsContainer .card__summary").first.text.strip
    rating_element = element.search(".card__detailsContainer .review-star-text").first
    rating = rating_element ? rating_element.text.strip.match(/\d\.?\d*/)[0] : nil
    recipe_url = element.search(".card__imageContainer a").first.attribute("href").value.strip
    recipe_html = URI.open(recipe_url).read
    recipe_doc = Nokogiri::HTML(recipe_html, nil, "utf-8")
    prep_element = recipe_doc.search(".recipe-meta-item").find do |element|
      element.text.strip.match?(/prep/i)
    end
    prep_time = prep_element ? prep_element.text.strip.match(/prep:\s+(\w* \w*)/i)[1] : nil
    results << Recipe.new(name: name, description: description, rating: rating, prep_time: prep_time)
  end
  results
end
=======
  def call
    html = URI.open("https://www.allrecipes.com/search/results/?search=#{@ingredient}").read
    # 1. Parse HTML
    doc = Nokogiri::HTML(html, nil, "utf-8")
    # 2. For the first five results
    results = []
    doc.search(".card__recipe").first(5).each do |element|
      # 3. Create recipe and store it in results
      name = element.search(".card__imageContainer a").first.attribute("title").value.strip
      description = element.search(".card__detailsContainer .card__summary").first.text.strip
      rating_element = element.search(".card__detailsContainer .review-star-text").first
      rating = rating_element ? rating_element.text.strip.match(/\d\.?\d*/)[0] : nil
      recipe_url = element.search(".card__imageContainer a").first.attribute("href").value.strip
      recipe_html = URI.open(recipe_url).read
      recipe_doc = Nokogiri::HTML(recipe_html, nil, "utf-8")
      prep_element = recipe_doc.search(".recipe-meta-item").find do |element|
        element.text.strip.match?(/prep/i)
      end
      prep_time = prep_element ? prep_element.text.strip.match(/prep:\s+(\w* \w*)/i)[1] : nil
      results << Recipe.new(name: name, description: description, rating: rating, prep_time: prep_time)
    end
    results
  end
>>>>>>> 8c133184c64ab67d11db1e9741e06f2d65ef08c5

import requests from bs4 import BeautifulSoup

url = "https://www.tiktok.com/@terrycrews"

headers = {
<<<<<<< HEAD
  'User-Agent': "Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:90.0) Gecko/20100101 Firefox/90.0"
=======
    "User-Agent": "Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:90.0) Gecko/20100101 Firefox/90.0"
>>>>>>> 8c133184c64ab67d11db1e9741e06f2d65ef08c5
}

soup = BeautifulSoup(requests.get(url, headers = headers).content, "html.parser")
puts(soup.select_one('[title="Followers"]').text)

# def scrape_youtube(keyword)
#   #forge the url
# url = "https://www.googleapis.com/youtube/v3/channels?part=statistics&id=#{keyword}&key=AIzaSyCwCsUf1XjoFM3SaapkCsXH2gF7lVnckHg"
# # open the url
# user_serialized = URI.open(url).read
# # convert the response
# user = JSON.parse(user_serialized)
# # return the amount of followers
# puts user['items'].first['statistics']['subscriberCount']
# # id=UCq5hh3lQDm41FrNchLBrJqw
# # url = "https://www.googleapis.com/youtube/v3/channels?part=statistics&id=UCq5hh3lQDm41FrNchLBrJqw&key=AIzaSyCwCsUf1XjoFM3SaapkCsXH2gF7lVnckHg"
# end
# puts scrape_youtube('UCq5hh3lQDm41FrNchLBrJqw')
