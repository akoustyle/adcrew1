require "open-uri"
require "nokogiri"

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

def scrape_etsy(keyword)
  # forge the URL
  url = "https://www.instagram.com/#{keyword}/"
  # open the URL
  response = URI.open(url).read
  # convert the response into a Nokogiri document
  html_doc = Nokogiri::HTML(response)
  # search in the doc each element with class '.k9GMp'
  # initialize a talent array
  talent_info = []
  html_doc.search('.k9GMp ').each do |element|
    nb_followers = element.search('.g47SY ').text.strip.to_i
    # etsy_price = element.search('.currency-value').text.strip.to_i
    # create a gift with those information
    talent_info << { nb: nb_followers }
  end
  # return an array of talent info
  talent_info
end
