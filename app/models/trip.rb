class Trip < ApplicationRecord
  has_many :transportations, dependent: :destroy
  has_many :activities, dependent: :destroy
  has_many :restaurants, dependent: :destroy
  has_many :hotels, dependent: :destroy
  has_many :locations, dependent: :destroy
  has_many :trip_users
  has_many :users, through: :trip_users

  # Calculate the total estimated cost from all associated models
  def total_est_cost
    transportations.sum(:est_cost).to_f +
    activities.sum(:est_cost).to_f +
    restaurants.sum(:est_cost).to_f +
    hotels.sum(:est_cost).to_f
  end

  # Calculate remaining budget based on total_budget and total_est_cost
  def est_remaining_budget
    return "No budget entered" unless total_budget

    total_budget.to_f - total_est_cost
  end
end
