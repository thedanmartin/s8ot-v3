json.array!(@trips) do |trip|
  json.extract! trip, :id, :date, :location, :opponent, :opponent_score, :fire_score
  json.url trip_url(trip, format: :json)
end
