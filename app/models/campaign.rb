class Campaign < ApplicationRecord
  has_many :collabs, dependent: :destroy
  has_many_attached :photos
  has_many :talents, through: :collabs
  has_one_attached :video
  # accepts_nested_attributes_for :collabs
  # translates :objectif, :activation, :sentence, :sentence2
end
