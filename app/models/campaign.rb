class Campaign < ApplicationRecord
  has_many :collabs, dependent: :nullify
  has_many_attached :photos
end
