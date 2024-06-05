class Subvibe < ApplicationRecord
  has_many :bar_subvibes
  has_many :user_subvibes
  has_many :bars, through: :bar_subvibes
  has_many :users, through: :user_subvibes

  validates :name, presence: true
  validates :main_vibe, presence: true, inclusion: %w[Boogie Intimate Pub Sports Trendy]
end
