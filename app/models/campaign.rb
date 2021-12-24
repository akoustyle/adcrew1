class Campaign < ApplicationRecord
  has_many :collabs, dependent: :destroy
  has_many_attached :photos
end
