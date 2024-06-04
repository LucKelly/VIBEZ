class Subvibe < ApplicationRecord
  has_many :bar_subvibes
  has_many :user_subvibes
end
