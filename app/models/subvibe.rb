class Subvibe < ApplicationRecord
  has_one_attached :photo
  has_many :bar_subvibes, dependent: :destroy
  has_many :user_subvibes, dependent: :destroy
  has_many :bars, through: :bar_subvibes
  has_many :users, through: :user_subvibes

  validates :name, presence: true
  validates :main_vibe, presence: true, inclusion: %w[boogie intimate pub sports trendy]
end
