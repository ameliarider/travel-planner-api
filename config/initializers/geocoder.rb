Geocoder.configure(
  lookup: :nominatim,         # free OpenStreetMap service
  timeout: 5,                 # seconds
  units: :km,                 # :km or :mi
  http_headers: { "User-Agent" => "MyRubyApp" } # Nominatim requires this
)
