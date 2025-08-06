class Trip < ApplicationRecord
  has_many :travels, dependent: :destroy
  has_many :activities, dependent: :destroy
  has_many :restaurants, dependent: :destroy
  has_many :hotels, dependent: :destroy
  belongs_to :user
end
