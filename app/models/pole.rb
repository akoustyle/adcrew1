class Pole < ApplicationRecord
  has_many :talents

  validates :name, presence: true, uniqueness: true
end
