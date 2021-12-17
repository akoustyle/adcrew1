class Talent < ApplicationRecord
  has_many :collabs
  has_many_attached :photos
end
