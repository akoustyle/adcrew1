class Campaign < ApplicationRecord
  # belongs_to :user
  extend FriendlyId
  extend Mobility
  friendly_id :name, use: :slugged
  translates :objectif, type: :text
  has_many :collabs, dependent: :destroy
  has_many_attached :photos
  has_many :talents, through: :collabs
  has_one_attached :video
  # accepts_nested_attributes_for :collabs
end
