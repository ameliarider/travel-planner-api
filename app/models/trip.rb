class Trip < ApplicationRecord
  has_many :travels
  has_many :activities
  has_many :restaurants
  has_many :hotels
  belongs_to :user
end
