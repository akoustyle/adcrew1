require 'open-uri'
# require 'json'
include ActionView::Helpers::NumberHelper
class Talent < ApplicationRecord
  belongs_to :user
  has_many :collabs, dependent: :destroy
  has_many_attached :photos
  has_one_attached :video
  has_one_attached :media

  # validates :photos, attached: true, limit: { min: 1, max: 3 }, content_type: [:png, :jpeg, :jpg]
  # validates :video, attached: true, content_type: [:mp3, :mp4]

  # def subscriber_count_youtube
  #   if youtube_link == "" || youtube_link.nil? || youtube_link == "0"
  #     return 0
  #   else
  #     url = "https://www.googleapis.com/youtube/v3/channels?part=statistics&id=#{youtube_link}&key=AIzaSyCwCsUf1XjoFM3SaapkCsXH2gF7lVnckHg"
  #     user_serialized = URI.open(url).read
  #     user = JSON.parse(user_serialized)

  #     return user['items'].first['statistics']['subscriberCount']
  #   end
    # id=UCq5hh3lQDm41FrNchLBrJqw
    # url = "https://www.googleapis.com/youtube/v3/channels?part=statistics&id=UCq5hh3lQDm41FrNchLBrJqw&key=AIzaSyCwCsUf1XjoFM3SaapkCsXH2gF7lVnckHg"
  # end

  # def subscriber_count_tiktok
  #   return 0 if youtube_link.nil?

  # url = "https://www.googleapis.com/youtube/v3/channels?part=statistics&id=#{youtube_link}&key=AIzaSyCwCsUf1XjoFM3SaapkCsXH2gF7lVnckHg"
  # user_serialized = URI.open(url).read
  # user = JSON.parse(user_serialized)

  # return user['items'].first['statistics']['subscriberCount']
  # # id=UCq5hh3lQDm41FrNchLBrJqw
  # # url = "https://www.googleapis.com/youtube/v3/channels?part=statistics&id=UCq5hh3lQDm41FrNchLBrJqw&key=AIzaSyCwCsUf1XjoFM3SaapkCsXH2gF7lVnckHg"
  # end

  # puts scrape_youtube('UCYfhRFzLInc3PPawJ3we0-w')
end
