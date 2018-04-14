class UserProfile < ApplicationRecord
  belongs_to :user
  validates :first_name, :presence => true
  validates :last_name, :presence => true
  validates :username, :presence => true, uniqueness: true
end
