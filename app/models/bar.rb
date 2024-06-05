class Bar < ApplicationRecord
  has_many :favourites
  has_many :bar_subvibes
  has_many :subvibes, through: :bar_subvibes
  has_many :users, through: :favourites
end


