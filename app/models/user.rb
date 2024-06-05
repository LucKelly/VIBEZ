class User < ApplicationRecord
  has_many :favourites
  has_many :user_subvibes
  has_many :bars, through: :favourites
  has_many :subvibes, through: :user_subvibes
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
