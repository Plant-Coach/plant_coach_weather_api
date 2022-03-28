class ForecastSerializer
  include JSONAPI::Serializer
  attributes :date, :sunrise, :sunset, :high, :low, :humidity, :wind, :weather
end
