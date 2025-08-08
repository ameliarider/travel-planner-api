class User < ApplicationRecord
  has_many :trip_users
  has_many :trips, through: :trip_users, dependent: :destroy
  has_secure_password
  validates :email, presence: true, uniqueness: true
end
