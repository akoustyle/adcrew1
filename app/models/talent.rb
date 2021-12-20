class Talent < ApplicationRecord
  has_many :collabs
  has_many_attached :photos
  has_one_attached :video

  # validates :photos, attached: true, limit: { min: 1, max: 3 }, content_type: [:png, :jpeg, :jpg]
  # validates :video, attached: true, content_type: [:mp3, :mp4]
end
