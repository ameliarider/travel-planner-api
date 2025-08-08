json.extract! trip, :id, :name, :start_date, :end_date, :image_url, :total_budget, :trip_user_id

json.total_est_cost trip.total_est_cost
json.est_remaining_budget trip.est_remaining_budget

json.transportations trip.transportations do |transportation|
  json.extract! transportation, :id, :name, :transport_type, :date, :confirmation_number, :link, :est_cost, :trip_id
end

json.restaurants trip.restaurants do |restaurant|
  json.extract! restaurant, :id, :name, :meal_type, :date, :est_cost, :trip_id
end

json.hotels trip.hotels do |hotel|
  json.extract! hotel, :id, :name, :address, :start_date, :end_date, :confirmation_number, :link, :est_cost, :trip_id, :coordinates
end

json.activities trip.activities do |activity|
  json.extract! activity, :id, :name, :date, :link, :est_cost, :trip_id
end

json.locations trip.locations do |location|
  json.extract! location, :id, :name, :start_date, :end_date, :trip_id, :coordinates
end
