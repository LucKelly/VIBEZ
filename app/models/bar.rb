class Bar < ApplicationRecord
  has_many :favourites
  has_many :bar_subvibes

  validates :name, presence: true
  validates :longitude, presence: true
  validates :latitude, presence: true
end
