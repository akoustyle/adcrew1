class Campaign < ApplicationRecord
  has_many :collabs
  has_one_attached :photo
end
