class ForecastSerializer
  include JSONAPI::Serializer
  attributes  :id,
              :lat,
              :lon,
              :current_weather,
              :daily_weather,
              :hourly_weather,
              :alerts
end
