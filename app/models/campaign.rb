class Campaign < ApplicationRecord
  has_many :collabs, dependent: :delete_all
  has_many_attached :photos
end
