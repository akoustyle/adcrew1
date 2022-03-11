class Campaign < ApplicationRecord
  has_many :collabs, dependent: :destroy
  has_many_attached :photos
  has_many :talents, through: :collabs
  # accepts_nested_attributes_for :collabs
  # translates :objectif, :activation, :sentence, :sentence2
end
