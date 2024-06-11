class Bar < ApplicationRecord
  has_one_attached :photo
  has_many :bar_subvibes, dependent: :destroy
  has_many :subvibes, through: :bar_subvibes
  geocoded_by :address
  acts_as_favoritable
  after_validation :geocode, if: :will_save_change_to_address?
  validates :name, presence: true, uniqueness: true

  attr_accessor :notes

  def main_vibes
    return subvibes.pluck(:main_vibe).uniq
  end
end
