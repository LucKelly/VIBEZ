class Bar < ApplicationRecord
  has_many :favourites, dependent: :destroy
  has_many :bar_subvibes, dependent: :destroy
  has_many :subvibes, through: :bar_subvibes
  has_many :users, through: :favourites

  validates :name, presence: true
  validates :longitude, presence: true
  validates :latitude, presence: true
end
