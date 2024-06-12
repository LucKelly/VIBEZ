class UserSubvibe < ApplicationRecord
  belongs_to :subvibe
  belongs_to :user
  validates :subvibe_id, uniqueness: { scope: :user_id }
end
