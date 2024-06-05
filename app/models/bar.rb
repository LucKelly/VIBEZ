class Bar < ApplicationRecord
  has_one_attached :photo
  has_many :favourites, dependent: :destroy
  has_many :bar_subvibes, dependent: :destroy
  has_many :subvibes, through: :bar_subvibes
  has_many :users, through: :favourites
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  validates :name, presence: true, uniqueness: true
end
